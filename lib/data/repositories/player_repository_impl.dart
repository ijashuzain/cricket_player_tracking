import 'dart:io';
import 'dart:math';
import 'package:cricket_player_tracking/core/error/exceptions.dart';
import 'package:cricket_player_tracking/core/error/failures.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import '../../domain/entities/player.dart';
import '../../domain/repositories/player_repository.dart';
import '../datasources/local/player_local_datasource.dart';
import '../datasources/remote/player_remote_datasource.dart';

@LazySingleton(as: PlayerRepository)
class PlayerRepositoryImpl implements PlayerRepository {
  final PlayerLocalDataSource _localDataSource;
  final PlayerRemoteDataSource _remoteDataSource;
  final Connectivity _connectivity;

  PlayerRepositoryImpl(
      this._localDataSource,
      this._remoteDataSource,
      this._connectivity,
      );

  Future<bool> get isOnline async =>
      await _connectivity.checkConnectivity() != ConnectivityResult.none;

  @override
  Future<Either<Failure, List<Player>>> getAllPlayers() async {
    try {
      if (await isOnline) {
        try {
          final remotePlayers = await _remoteDataSource.getAllPlayers();
          await Future.wait(
              remotePlayers.map((player) => _localDataSource.savePlayer(player))
          );
          return Right(remotePlayers);
        } on ServerException catch (e) {
          return Right(await _localDataSource.getAllPlayers());
        }
      }

      final localPlayers = await _localDataSource.getAllPlayers();
      return Right(localPlayers);
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.message));
    } catch (e) {
      return Left(UnexpectedFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Player>> createPlayer(Player player) async {
    try {
      await _localDataSource.savePlayer(player);

      if (await isOnline) {
        try {
          final remotePlayer = await _remoteDataSource.createPlayer(player);
          await _localDataSource.savePlayer(remotePlayer);
          return Right(remotePlayer);
        } on ServerException catch (e) {
          return Right(player);
        }
      }

      return Right(player);
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.message));
    } catch (e) {
      return Left(UnexpectedFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Player>> updatePlayer(Player player) async {
    try {
      await _localDataSource.savePlayer(player);

      if (await isOnline) {
        try {
          final updatedPlayer = await _remoteDataSource.updatePlayer(player);
          await _localDataSource.savePlayer(updatedPlayer);
          return Right(updatedPlayer);
        } on ServerException catch (e) {
          return Right(player);
        }
      }

      return Right(player);
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.message));
    } catch (e) {
      return Left(UnexpectedFailure(message: e.toString()));
    }
  }



  @override
  Future<Either<Failure, Player>> getPlayerById(String playerId) async {
    try {
      if (await isOnline) {
        try {
          final player = await _remoteDataSource.getPlayerById(playerId);
          await _localDataSource.savePlayer(player);
          return Right(player);
        } on ServerException catch (e) {
          return Right(await _localDataSource.getPlayerById(playerId));
        }
      }

      return Right(await _localDataSource.getPlayerById(playerId));
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.message));
    } catch (e) {
      return Left(UnexpectedFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> uploadPerformanceImage(File imageFile) async {
    try {
      if (!await isOnline) {
        return Left(NetworkFailure(message: 'No internet connection'));
      }

      final imageUrl = await _remoteDataSource.uploadPerformanceImage(imageFile);
      return Right(imageUrl);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      return Left(UnexpectedFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Player>>> searchPlayers(String query) async {
    try {
      if (await isOnline) {
        try {
          final players = await _remoteDataSource.searchPlayers(query);
          return Right(players);
        } on ServerException catch (e) {
          final players = await _localDataSource.searchPlayers(query);
          return Right(players);
        }
      }
      final players = await _localDataSource.searchPlayers(query);
      return Right(players);
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.message));
    } catch (e) {
      return Left(UnexpectedFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Player>> addPerformanceRecord(String playerId, PerformanceRecord record) async {
    try {
      final playerResult = await getPlayerById(playerId);

      return await playerResult.fold(
            (failure) => Left(failure),
            (player) async {
          final updatedPlayer = player.copyWith(
            performanceRecords: [...player.performanceRecords, record],
            totalWickets: player.totalWickets + record.wickets,
            totalRuns: player.totalRuns + record.runs,
            bestPerformanceRuns: _calculateBestScore(player, record),
            bestPerformanceWickets: max(player.bestPerformanceWickets, record.wickets),
          );

          return await updatePlayer(updatedPlayer);
        },
      );
    } catch (e) {
      return Left(UnexpectedFailure(message: e.toString()));
    }
  }

  int _calculateBestScore(Player player, PerformanceRecord record) {
    final allScores = [...player.performanceRecords.map((r) => r.runs), record.runs];
    return allScores.reduce((max, score) => score > max ? score : max);
  }

  @override
  Future<Either<Failure, void>> deletePlayer(String playerId) async {
    try {
       await _localDataSource.deletePlayer(playerId);
       await _remoteDataSource.deletePlayer(playerId);
      return const Right(null);
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.message));
    } catch (e) {
      return Left(UnexpectedFailure(message: e.toString()));
    }
  }
}