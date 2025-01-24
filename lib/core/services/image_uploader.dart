import 'dart:io';
import 'package:cricket_player_tracking/core/error/exceptions.dart';
import 'package:cricket_player_tracking/core/error/failures.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:image/image.dart' as img;
import 'package:path/path.dart' as path;

@injectable
class ImageUploader {
  final FirebaseStorage _storage;

  ImageUploader(this._storage);

  Future<String> uploadImage(File file, String folder) async {
    try {
      final fileName = '${DateTime.now().millisecondsSinceEpoch}_${path.basename(file.path)}';
      final ref = _storage.ref().child('$folder/$fileName');

      final metadata = SettableMetadata(
        contentType: 'image/jpeg',
        customMetadata: {
          'uploaded_at': DateTime.now().toIso8601String(),
        },
      );

      int attempts = 0;
      const maxAttempts = 3;

      while (attempts < maxAttempts) {
        try {
          await ref.putFile(file, metadata);
final downloadUrl = await ref.getDownloadURL();
          return downloadUrl;
        } on FirebaseException catch (e) {
          attempts++;
          if (attempts == maxAttempts) {
            throw ServerException(
              message: 'Failed to upload image after $maxAttempts attempts: ${e.message}',
              code: e.code,
            );
          }
          await Future.delayed(Duration(seconds: attempts));
        }
      }

      throw ServerException(
        message: 'Failed to upload image after $maxAttempts attempts',
      );
    } catch (e) {
      throw ServerException(
        message: 'Unexpected error during image upload: $e',
      );
    }
  }
}
