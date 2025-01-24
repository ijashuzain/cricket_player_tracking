import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.server({
    required String message,
    String? code,
    dynamic details,
  }) = ServerFailure;

  const factory Failure.cache({
    required String message,
    String? code,
    dynamic details,
  }) = CacheFailure;

  const factory Failure.network({
    required String message,
    String? code,
    dynamic details,
  }) = NetworkFailure;

  const factory Failure.unexpected({
    required String message,
    String? code,
    dynamic details,
  }) = UnexpectedFailure;
}

extension FailureX on Failure {
  String toUserMessage() => when(
        server: (message, code, details) => 'Server error: $message',
        cache: (message, code, details) => 'Storage error: $message',
        network: (message, code, details) => 'Network error: $message',
        unexpected: (message, code, details) => 'Unexpected error: $message',
      );

  bool get isNetworkError => maybeWhen(
        network: (_, __, ___) => true,
        orElse: () => false,
      );

  bool get shouldRetry => when(
        server: (_, code, __) => code == '500' || code == '503',
        network: (_, __, ___) => true,
        cache: (_, __, ___) => false,
        unexpected: (_, __, ___) => false,
      );
}
