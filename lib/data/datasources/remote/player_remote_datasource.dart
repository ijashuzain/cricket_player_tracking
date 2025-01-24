import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cricket_player_tracking/core/error/exceptions.dart';
import 'package:cricket_player_tracking/domain/entities/player.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PlayerRemoteDataSource {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;

  PlayerRemoteDataSource(this._firestore, this._storage);

  Future<List<Player>> getAllPlayers() async {
    try {
      final querySnapshot = await _firestore.collection('players').get();
      return querySnapshot.docs
          .map((doc) => Player.fromJson({
        ...doc.data(),
        'id': doc.id,
      }))
          .toList();
    } catch (e) {
      throw ServerException(message: 'Failed to fetch players: $e');
    }
  }

  Future<Player> createPlayer(Player player) async {
    try {
      final playerData = player.toJson()..remove('id');
      playerData['performance_records'] = player.performanceRecords
          .map((record) => record.toJson())
          .toList();

      final playerDataWithMetadata = {
        ...playerData,
        'created_at': FieldValue.serverTimestamp(),
        'updated_at': FieldValue.serverTimestamp(),
      };

      final docRef = await _firestore.collection('players').add(playerDataWithMetadata);

      return Player.fromJson({
        ...playerData,
        'id': docRef.id,
      });
    } catch (e) {
      throw ServerException(
        message: 'Failed to create player: $e',
        details: e.toString(),
      );
    }
  }

  Future<String> uploadPerformanceImage(File imageFile) async {
    try {
      final fileName = 'performance_${DateTime.now().millisecondsSinceEpoch}.jpg';
      final ref = _storage.ref().child('performance_images/$fileName');

      await ref.putFile(imageFile);
      return await ref.getDownloadURL();
    } catch (e) {
      throw ServerException(message: 'Image upload failed: $e');
    }
  }

  Future<List<Player>> searchPlayers(String query) async {
    try {
      final querySnapshot = await _firestore
          .collection('players')
          .where('name', isGreaterThanOrEqualTo: query)
          .where('name', isLessThan: query + 'z')
          .get();

      return querySnapshot.docs
          .map((doc) => Player.fromJson({
        ...doc.data(),
        'id': doc.id,
      }))
          .toList();
    } catch (e) {
      throw ServerException(message: 'Player search failed: $e');
    }
  }

  Future<Player> getPlayerById(String id) async {
    try {
      final docSnapshot = await _firestore.collection('players').doc(id).get();

      if (!docSnapshot.exists) {
        throw ServerException(
          message: 'Player not found with ID: $id',
          code: 'NOT_FOUND',
        );
      }

      return Player.fromJson({
        ...docSnapshot.data()!,
        'id': docSnapshot.id,
      });
    } catch (e) {
      throw ServerException(
        message: 'Failed to fetch player: $e',
        code: e is FirebaseException ? e.code : 'UNKNOWN',
      );
    }
  }
Future<Player> updatePlayer(Player player) async {
    try {
      final playerRef = _firestore.collection('players').doc(player.id);

      await _firestore.runTransaction((transaction) async {
        final snapshot = await transaction.get(playerRef);

        if (!snapshot.exists) {
          throw ServerException(
            message: 'Player not found for update',
            code: 'NOT_FOUND',
          );
        }

        final updateData = player.toJson()..remove('id');
        updateData['performance_records'] = player.performanceRecords
            .map((record) => record.toJson())
            .toList();

        transaction.update(playerRef, {
          ...updateData,
          'updated_at': FieldValue.serverTimestamp(),
        });
      });

      return await getPlayerById(player.id);
    } catch (e) {
      throw ServerException(
        message: 'Failed to update player: $e',
        code: e is FirebaseException ? e.code : 'UPDATE_FAILED',
      );
    }
  }

  Future<void> deletePlayer(String id) async {
    try {
      await _firestore.collection('players').doc(id).delete();
    } catch (e) {
      throw ServerException(
        message: 'Failed to delete player: $e',
        code: e is FirebaseException ? e.code : 'DELETE_FAILED',
      );
    }
  }

  Future<String> uploadProfileImage(File imageFile, String playerId) async {
    try {
      final fileName = 'profile_${playerId}_${DateTime.now().millisecondsSinceEpoch}.jpg';
      final ref = _storage.ref().child('profile_images/$fileName');

      final metadata = SettableMetadata(
        contentType: 'image/jpeg',
        customMetadata: {
          'playerId': playerId,
          'uploadedAt': DateTime.now().toIso8601String(),
        },
      );
      await ref.putFile(imageFile, metadata);

      return await ref.getDownloadURL();
    } catch (e) {
      throw ServerException(
        message: 'Profile image upload failed: $e',
        code: e is FirebaseException ? e.code : 'UPLOAD_FAILED',
      );
    }
  }

}