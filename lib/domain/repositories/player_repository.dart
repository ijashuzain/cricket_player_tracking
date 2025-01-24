import 'dart:io';
import 'package:dartz/dartz.dart';

import '../entities/player.dart';
import '../../../core/error/failures.dart';

abstract class PlayerRepository {
  Future<Either<Failure, List<Player>>> getAllPlayers();
  Future<Either<Failure, Player>> createPlayer(Player player);
  Future<Either<Failure, void>> deletePlayer(String playerId);
  Future<Either<Failure, Player>> updatePlayer(Player player);
  Future<Either<Failure, Player>> getPlayerById(String playerId);
  Future<Either<Failure, Player>> addPerformanceRecord(
      String playerId,
      PerformanceRecord record
      );
  Future<Either<Failure, String>> uploadPerformanceImage(File imageFile);
  Future<Either<Failure, List<Player>>> searchPlayers(String query);
}