part of 'performance_bloc.dart';

@freezed
class PerformanceEvent with _$PerformanceEvent {
  const factory PerformanceEvent.addPerformance({
    required String playerId,
    required PerformanceRecord record,
    File? performanceImage,
  }) = _AddPerformance;
}
