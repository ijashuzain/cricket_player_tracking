import 'dart:io';
import 'package:cricket_player_tracking/core/error/failures.dart';
import 'package:cricket_player_tracking/core/network/network_info.dart';
import 'package:cricket_player_tracking/core/services/image_uploader.dart';
import 'package:cricket_player_tracking/domain/entities/player.dart';
import 'package:cricket_player_tracking/domain/repositories/player_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_event.dart';
part 'player_state.dart';
part 'player_bloc.freezed.dart';

@injectable
class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  final PlayerRepository _repository;
  final NetworkInfo _networkInfo;
  final ImageUploader _imageUploader;

  PlayerBloc(
    this._repository,
    this._networkInfo,
    this._imageUploader,
  ) : super(const PlayerState.initial()) {
    on<_FetchAllPlayers>(_handleFetchAllPlayers);
    on<_CreatePlayer>(_handleCreatePlayer);
    on<_UpdatePlayer>(_handleUpdatePlayer);
    on<_DeletePlayer>(_handleDeletePlayer);
    on<_GetPlayerById>(_handleGetPlayerById);
    on<_SearchPlayers>(_handleSearchPlayers);
  }

  Future<void> _handleFetchAllPlayers(
    _FetchAllPlayers event,
    Emitter<PlayerState> emit,
  ) async {
    try {
      emit(const PlayerState.loading());
      final isOnline = await _networkInfo.isConnected;

      final result = await _repository.getAllPlayers();
      emit(result.fold(
        (failure) => PlayerState.error(
          message: _mapFailureToMessage(failure),
          hasOfflineData: !isOnline,
        ),
        (players) => PlayerState.loaded(
          players: players,
          hasOfflineData: !isOnline,
        ),
      ));
    } catch (e) {
      emit(PlayerState.error(
        message: 'Unexpected error: ${e.toString()}',
        hasOfflineData: !await _networkInfo.isConnected,
      ));
    }
  }

  Future<void> _handleGetPlayerById(
    _GetPlayerById event,
    Emitter<PlayerState> emit,
  ) async {
    try {
      emit(const PlayerState.loading());
      final result = await _repository.getPlayerById(event.playerId);
      emit(result.fold(
        (failure) => PlayerState.error(message: failure.toString()),
        (player) => PlayerState.playerDetails(player: player),
      ));
    } catch (e) {
      emit(PlayerState.error(message: e.toString()));
    }
  }

  Future<void> _handleCreatePlayer(
    _CreatePlayer event,
    Emitter<PlayerState> emit,
  ) async {
    try {
      emit(const PlayerState.loading());
      final isOnline = await _networkInfo.isConnected;

      final imageUrl = await _handleImageUpload(
        event.profileImage,
        'profile_images',
        isOnline,
      );

      final playerToCreate = event.player.copyWith(
        profileImageUrl: imageUrl ?? event.player.profileImageUrl,
      );

      final result = await _repository.createPlayer(playerToCreate);

      await _emitResultAndRefresh(
        result: result,
        emit: emit,
        isOnline: isOnline,
        errorMessage: 'Failed to create player',
      );
    } catch (e) {
      _emitError(emit, e);
    }
  }

  Future<void> _handleDeletePlayer(
    _DeletePlayer event,
    Emitter<PlayerState> emit,
  ) async {
    try {
      emit(const PlayerState.loading());
      await _networkInfo.isConnected;
      await _repository.deletePlayer(event.playerId);
      add(const PlayerEvent.fetchAllPlayers());
    } catch (e) {
      _emitError(emit, e);
    }
  }

  Future<void> _handleSearchPlayers(
    _SearchPlayers event,
    Emitter<PlayerState> emit,
  ) async {
    if (event.query.isEmpty) {
      add(const PlayerEvent.fetchAllPlayers());
      return;
    }

    emit(const PlayerState.loading());

    try {
      final result = await _repository.searchPlayers(event.query);

      emit(result.fold(
        (failure) => PlayerState.error(message: failure.toString()),
        (players) => PlayerState.loaded(players: players),
      ));
    } catch (e) {
      emit(PlayerState.error(message: e.toString()));
    }
  }

  Future<void> _handleUpdatePlayer(
    _UpdatePlayer event,
    Emitter<PlayerState> emit,
  ) async {
    try {
      emit(const PlayerState.loading());
      final isOnline = await _networkInfo.isConnected;

      final imageUrl = await _handleImageUpload(
        event.profileImage,
        'profile_images',
        isOnline,
      );

      final playerToUpdate = event.player.copyWith(
        profileImageUrl: imageUrl ?? event.player.profileImageUrl,
      );

      final result = await _repository.updatePlayer(playerToUpdate);

      await _emitResultAndRefresh(
        result: result,
        emit: emit,
        isOnline: isOnline,
        errorMessage: 'Failed to update player',
      );

      if (!isOnline) {
        add(const PlayerEvent.syncOfflineData());
      }
    } catch (e) {
      _emitError(emit, e);
    }
  }

  Future<String?> _handleImageUpload(
    File? image,
    String folder,
    bool isOnline,
  ) async {
    if (image == null || !isOnline) return null;

    final uploadResult = await _imageUploader.uploadImage(
      image,
      folder,
    );

    return uploadResult;
  }

  Future<void> _emitResultAndRefresh({
    required Either<Failure, Player> result,
    required Emitter<PlayerState> emit,
    required bool isOnline,
    required String errorMessage,
  }) async {
    emit(result.fold(
      (failure) => PlayerState.error(
        message: _mapFailureToMessage(failure),
        hasOfflineData: !isOnline,
      ),
      (player) => PlayerState.loaded(
        players: [player],
        hasOfflineData: !isOnline,
      ),
    ));

    if (result.isRight()) {
      add(const PlayerEvent.fetchAllPlayers());
    }
  }

  String _mapFailureToMessage(Failure failure) {
    return failure.map(
      server: (f) => 'Server error: ${f.message}',
      cache: (f) => 'Cache error: ${f.message}',
      network: (f) => 'Network error: ${f.message}',
      unexpected: (f) => 'Unexpected error: ${f.message}',
    );
  }

  Future<void> _emitError(Emitter<PlayerState> emit, Object error) async {
    emit(PlayerState.error(
      message: 'Error: ${error.toString()}',
      hasOfflineData: !await _networkInfo.isConnected,
    ));
  }
}
