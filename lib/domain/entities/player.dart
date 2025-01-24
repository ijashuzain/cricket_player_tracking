import 'package:freezed_annotation/freezed_annotation.dart';

part 'player.freezed.dart';
part 'player.g.dart';

@freezed
class Player with _$Player {
  const factory Player({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'age') required int age,
    @JsonKey(name: 'specialization') required String specialization,
    @JsonKey(name: 'profile_image_url') String? profileImageUrl,
    @JsonKey(name: 'performance_records') @Default([]) List<PerformanceRecord> performanceRecords,
    @JsonKey(name: 'total_wickets') @Default(0) int totalWickets,
    @JsonKey(name: 'total_runs') @Default(0) int totalRuns,
    @JsonKey(name: 'best_performance_runs') @Default(0) int bestPerformanceRuns,
    @JsonKey(name: 'best_performance_wickets') @Default(0) int bestPerformanceWickets,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}

@freezed
class PerformanceRecord with _$PerformanceRecord {
  const factory PerformanceRecord({
    String? id,
    @JsonKey(name: 'date') required DateTime date,
    @JsonKey(name: 'runs') required int runs,
    @JsonKey(name: 'wickets') required int wickets,
    @JsonKey(name: 'match_details') String? matchDetails,
    @JsonKey(name: 'performance_image_url') String? performanceImageUrl,
    @JsonKey(name: 'location') String? location,
  }) = _PerformanceRecord;
  factory PerformanceRecord.fromJson(Map<String, dynamic> json) => _$PerformanceRecordFromJson(json);
}
