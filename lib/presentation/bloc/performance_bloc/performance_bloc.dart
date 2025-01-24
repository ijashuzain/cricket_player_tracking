import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cricket_player_tracking/core/network/network_info.dart';
import 'package:cricket_player_tracking/core/services/image_uploader.dart';
import 'package:cricket_player_tracking/domain/entities/player.dart';
import 'package:cricket_player_tracking/domain/repositories/player_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'performance_event.dart';
part 'performance_state.dart';
part 'performance_bloc.freezed.dart';

@injectable
class PerformanceBloc extends Bloc<PerformanceEvent, PerformanceState> {
  final PlayerRepository _repository;
  final NetworkInfo _networkInfo;
  final ImageUploader _imageUploader;

  PerformanceBloc(this._repository, this._networkInfo, this._imageUploader)
      : super(const PerformanceState.initial()) {
    on<_AddPerformance>(_handleAddPerformance);
  }

  Future<void> _handleAddPerformance(_AddPerformance event, Emitter<PerformanceState> emit) async {
    try {
      emit(const PerformanceState.adding());
      final isOnline = await _networkInfo.isConnected;

      String? imageUrl;
      if (event.performanceImage != null && isOnline) {
        imageUrl = await _imageUploader.uploadImage(
          event.performanceImage!,
          'performance_images',
        );
      }

      final performance = event.record.copyWith(
        performanceImageUrl: imageUrl,
      );

      final result = await _repository.addPerformanceRecord(
        event.playerId,
        performance,
      );

      emit(result.fold(
            (failure) => PerformanceState.error(
          message: failure.toString(),
          isOffline: !isOnline,
        ),
            (player) => PerformanceState.success(
          player: player,
          isOffline: !isOnline,
        ),
      ));
    } catch (e) {
      emit(PerformanceState.error(
        message: e.toString(),
        isOffline: !await _networkInfo.isConnected,
      ));
    }
  }
}
