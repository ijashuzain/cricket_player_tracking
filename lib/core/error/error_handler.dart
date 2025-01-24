import 'dart:async';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';

import 'exceptions.dart';
import 'failures.dart';

@lazySingleton
class ErrorHandler {
  Future<Failure> handleError(error) async {
    if (error is AppException) {
      return _handleAppException(error);
    }

    if (error is FirebaseException) {
      return _handleFirebaseError(error);
    }

    if (error is SocketException || error is TimeoutException) {
      return const Failure.network(
        message: 'Network connection failed',
      );
    }

    return Failure.unexpected(
      message: error.toString(),
      details: error,
    );
  }

  Failure _handleAppException(AppException exception) {
    if (exception is ServerException) {
      return Failure.server(
        message: exception.message,
        code: exception.code,
        details: exception.details,
      );
    }

    if (exception is CacheException) {
      return Failure.cache(
        message: exception.message,
        code: exception.code,
        details: exception.details,
      );
    }

    if (exception is NetworkException) {
      return Failure.network(
        message: exception.message,
        code: exception.code,
        details: exception.details,
      );
    }


    return Failure.unexpected(
      message: exception.message,
      code: exception.code,
      details: exception.details,
    );
  }

  Failure _handleFirebaseError(FirebaseException error) {
    switch (error.code) {
      case 'network-request-failed':
        return Failure.network(
          message: 'Firebase network request failed',
          code: error.code,
          details: error,
        );

      default:
        return Failure.server(
          message: error.message ?? 'Firebase error occurred',
          code: error.code,
          details: error,
        );
    }
  }
}
