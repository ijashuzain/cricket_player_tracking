// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayerImpl _$$PlayerImplFromJson(Map<String, dynamic> json) => _$PlayerImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      age: (json['age'] as num).toInt(),
      specialization: json['specialization'] as String,
      profileImageUrl: json['profile_image_url'] as String?,
      performanceRecords: (json['performance_records'] as List<dynamic>?)
              ?.map(
                  (e) => PerformanceRecord.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalWickets: (json['total_wickets'] as num?)?.toInt() ?? 0,
      totalRuns: (json['total_runs'] as num?)?.toInt() ?? 0,
      bestPerformanceRuns:
          (json['best_performance_runs'] as num?)?.toInt() ?? 0,
      bestPerformanceWickets:
          (json['best_performance_wickets'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PlayerImplToJson(_$PlayerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'specialization': instance.specialization,
      'profile_image_url': instance.profileImageUrl,
      'performance_records': instance.performanceRecords,
      'total_wickets': instance.totalWickets,
      'total_runs': instance.totalRuns,
      'best_performance_runs': instance.bestPerformanceRuns,
      'best_performance_wickets': instance.bestPerformanceWickets,
    };

_$PerformanceRecordImpl _$$PerformanceRecordImplFromJson(
        Map<String, dynamic> json) =>
    _$PerformanceRecordImpl(
      id: json['id'] as String?,
      date: DateTime.parse(json['date'] as String),
      runs: (json['runs'] as num).toInt(),
      wickets: (json['wickets'] as num).toInt(),
      matchDetails: json['match_details'] as String?,
      performanceImageUrl: json['performance_image_url'] as String?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$$PerformanceRecordImplToJson(
        _$PerformanceRecordImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'runs': instance.runs,
      'wickets': instance.wickets,
      'match_details': instance.matchDetails,
      'performance_image_url': instance.performanceImageUrl,
      'location': instance.location,
    };
