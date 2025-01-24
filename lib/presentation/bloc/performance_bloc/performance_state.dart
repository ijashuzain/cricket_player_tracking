part of 'performance_bloc.dart';

@freezed
class PerformanceState with _$PerformanceState {
  const factory PerformanceState.initial() = _Initial;
  const factory PerformanceState.adding() = _Adding;
  const factory PerformanceState.success({
    required Player player,
    required bool isOffline,
  }) = _Success;
  const factory PerformanceState.error({
    required String message,
    required bool isOffline,
  }) = _Error;
}
