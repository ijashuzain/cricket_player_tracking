class AppException implements Exception {
  final String message;
  final String? code;
  final dynamic details;

  AppException({
    required this.message,
    this.code,
    this.details,
  });

  @override
  String toString() => 'AppException: $message${code != null ? ' (Code: $code)' : ''}';
}

class ServerException extends AppException {
  ServerException({
    required String message,
    String? code,
    dynamic details,
  }) : super(
          message: message,
          code: code,
          details: details,
        );
}

class CacheException extends AppException {
  CacheException({
    required String message,
    String? code,
    dynamic details,
  }) : super(
          message: message,
          code: code,
          details: details,
        );
}

class NetworkException extends AppException {
  NetworkException({
    required String message,
    String? code,
    dynamic details,
  }) : super(
          message: message,
          code: code,
          details: details,
        );
}
