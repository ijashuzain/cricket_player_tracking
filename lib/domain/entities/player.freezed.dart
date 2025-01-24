// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return _Player.fromJson(json);
}

/// @nodoc
mixin _$Player {
  /// Unique identifier for the player
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  /// Player's full name
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Player's age
  @JsonKey(name: 'age')
  int get age => throw _privateConstructorUsedError;

  /// Player's primary role/specialization
  @JsonKey(name: 'specialization')
  String get specialization => throw _privateConstructorUsedError;

  /// Profile image URL
  @JsonKey(name: 'profile_image_url')
  String? get profileImageUrl => throw _privateConstructorUsedError;

  /// Comprehensive performance records
  @JsonKey(name: 'performance_records')
  List<PerformanceRecord> get performanceRecords =>
      throw _privateConstructorUsedError;

  /// Total wickets taken
  @JsonKey(name: 'total_wickets')
  int get totalWickets => throw _privateConstructorUsedError;

  /// Total runs scored
  @JsonKey(name: 'total_runs')
  int get totalRuns => throw _privateConstructorUsedError;

  /// Best individual performance score
  @JsonKey(name: 'best_performance_runs')
  int get bestPerformanceRuns => throw _privateConstructorUsedError;
  @JsonKey(name: 'best_performance_wickets')
  int get bestPerformanceWickets => throw _privateConstructorUsedError;

  /// Serializes this Player to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Player
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerCopyWith<Player> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res, Player>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'age') int age,
      @JsonKey(name: 'specialization') String specialization,
      @JsonKey(name: 'profile_image_url') String? profileImageUrl,
      @JsonKey(name: 'performance_records')
      List<PerformanceRecord> performanceRecords,
      @JsonKey(name: 'total_wickets') int totalWickets,
      @JsonKey(name: 'total_runs') int totalRuns,
      @JsonKey(name: 'best_performance_runs') int bestPerformanceRuns,
      @JsonKey(name: 'best_performance_wickets') int bestPerformanceWickets});
}

/// @nodoc
class _$PlayerCopyWithImpl<$Res, $Val extends Player>
    implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Player
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? age = null,
    Object? specialization = null,
    Object? profileImageUrl = freezed,
    Object? performanceRecords = null,
    Object? totalWickets = null,
    Object? totalRuns = null,
    Object? bestPerformanceRuns = null,
    Object? bestPerformanceWickets = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      specialization: null == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      performanceRecords: null == performanceRecords
          ? _value.performanceRecords
          : performanceRecords // ignore: cast_nullable_to_non_nullable
              as List<PerformanceRecord>,
      totalWickets: null == totalWickets
          ? _value.totalWickets
          : totalWickets // ignore: cast_nullable_to_non_nullable
              as int,
      totalRuns: null == totalRuns
          ? _value.totalRuns
          : totalRuns // ignore: cast_nullable_to_non_nullable
              as int,
      bestPerformanceRuns: null == bestPerformanceRuns
          ? _value.bestPerformanceRuns
          : bestPerformanceRuns // ignore: cast_nullable_to_non_nullable
              as int,
      bestPerformanceWickets: null == bestPerformanceWickets
          ? _value.bestPerformanceWickets
          : bestPerformanceWickets // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerImplCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$$PlayerImplCopyWith(
          _$PlayerImpl value, $Res Function(_$PlayerImpl) then) =
      __$$PlayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'age') int age,
      @JsonKey(name: 'specialization') String specialization,
      @JsonKey(name: 'profile_image_url') String? profileImageUrl,
      @JsonKey(name: 'performance_records')
      List<PerformanceRecord> performanceRecords,
      @JsonKey(name: 'total_wickets') int totalWickets,
      @JsonKey(name: 'total_runs') int totalRuns,
      @JsonKey(name: 'best_performance_runs') int bestPerformanceRuns,
      @JsonKey(name: 'best_performance_wickets') int bestPerformanceWickets});
}

/// @nodoc
class __$$PlayerImplCopyWithImpl<$Res>
    extends _$PlayerCopyWithImpl<$Res, _$PlayerImpl>
    implements _$$PlayerImplCopyWith<$Res> {
  __$$PlayerImplCopyWithImpl(
      _$PlayerImpl _value, $Res Function(_$PlayerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Player
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? age = null,
    Object? specialization = null,
    Object? profileImageUrl = freezed,
    Object? performanceRecords = null,
    Object? totalWickets = null,
    Object? totalRuns = null,
    Object? bestPerformanceRuns = null,
    Object? bestPerformanceWickets = null,
  }) {
    return _then(_$PlayerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      specialization: null == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      performanceRecords: null == performanceRecords
          ? _value._performanceRecords
          : performanceRecords // ignore: cast_nullable_to_non_nullable
              as List<PerformanceRecord>,
      totalWickets: null == totalWickets
          ? _value.totalWickets
          : totalWickets // ignore: cast_nullable_to_non_nullable
              as int,
      totalRuns: null == totalRuns
          ? _value.totalRuns
          : totalRuns // ignore: cast_nullable_to_non_nullable
              as int,
      bestPerformanceRuns: null == bestPerformanceRuns
          ? _value.bestPerformanceRuns
          : bestPerformanceRuns // ignore: cast_nullable_to_non_nullable
              as int,
      bestPerformanceWickets: null == bestPerformanceWickets
          ? _value.bestPerformanceWickets
          : bestPerformanceWickets // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerImpl implements _Player {
  const _$PlayerImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'age') required this.age,
      @JsonKey(name: 'specialization') required this.specialization,
      @JsonKey(name: 'profile_image_url') this.profileImageUrl,
      @JsonKey(name: 'performance_records')
      final List<PerformanceRecord> performanceRecords = const [],
      @JsonKey(name: 'total_wickets') this.totalWickets = 0,
      @JsonKey(name: 'total_runs') this.totalRuns = 0,
      @JsonKey(name: 'best_performance_runs') this.bestPerformanceRuns = 0,
      @JsonKey(name: 'best_performance_wickets')
      this.bestPerformanceWickets = 0})
      : _performanceRecords = performanceRecords;

  factory _$PlayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerImplFromJson(json);

  /// Unique identifier for the player
  @override
  @JsonKey(name: 'id')
  final String id;

  /// Player's full name
  @override
  @JsonKey(name: 'name')
  final String name;

  /// Player's age
  @override
  @JsonKey(name: 'age')
  final int age;

  /// Player's primary role/specialization
  @override
  @JsonKey(name: 'specialization')
  final String specialization;

  /// Profile image URL
  @override
  @JsonKey(name: 'profile_image_url')
  final String? profileImageUrl;

  /// Comprehensive performance records
  final List<PerformanceRecord> _performanceRecords;

  /// Comprehensive performance records
  @override
  @JsonKey(name: 'performance_records')
  List<PerformanceRecord> get performanceRecords {
    if (_performanceRecords is EqualUnmodifiableListView)
      return _performanceRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_performanceRecords);
  }

  /// Total wickets taken
  @override
  @JsonKey(name: 'total_wickets')
  final int totalWickets;

  /// Total runs scored
  @override
  @JsonKey(name: 'total_runs')
  final int totalRuns;

  /// Best individual performance score
  @override
  @JsonKey(name: 'best_performance_runs')
  final int bestPerformanceRuns;
  @override
  @JsonKey(name: 'best_performance_wickets')
  final int bestPerformanceWickets;

  @override
  String toString() {
    return 'Player(id: $id, name: $name, age: $age, specialization: $specialization, profileImageUrl: $profileImageUrl, performanceRecords: $performanceRecords, totalWickets: $totalWickets, totalRuns: $totalRuns, bestPerformanceRuns: $bestPerformanceRuns, bestPerformanceWickets: $bestPerformanceWickets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.specialization, specialization) ||
                other.specialization == specialization) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            const DeepCollectionEquality()
                .equals(other._performanceRecords, _performanceRecords) &&
            (identical(other.totalWickets, totalWickets) ||
                other.totalWickets == totalWickets) &&
            (identical(other.totalRuns, totalRuns) ||
                other.totalRuns == totalRuns) &&
            (identical(other.bestPerformanceRuns, bestPerformanceRuns) ||
                other.bestPerformanceRuns == bestPerformanceRuns) &&
            (identical(other.bestPerformanceWickets, bestPerformanceWickets) ||
                other.bestPerformanceWickets == bestPerformanceWickets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      age,
      specialization,
      profileImageUrl,
      const DeepCollectionEquality().hash(_performanceRecords),
      totalWickets,
      totalRuns,
      bestPerformanceRuns,
      bestPerformanceWickets);

  /// Create a copy of Player
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerImplCopyWith<_$PlayerImpl> get copyWith =>
      __$$PlayerImplCopyWithImpl<_$PlayerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerImplToJson(
      this,
    );
  }
}

abstract class _Player implements Player {
  const factory _Player(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'age') required final int age,
      @JsonKey(name: 'specialization') required final String specialization,
      @JsonKey(name: 'profile_image_url') final String? profileImageUrl,
      @JsonKey(name: 'performance_records')
      final List<PerformanceRecord> performanceRecords,
      @JsonKey(name: 'total_wickets') final int totalWickets,
      @JsonKey(name: 'total_runs') final int totalRuns,
      @JsonKey(name: 'best_performance_runs') final int bestPerformanceRuns,
      @JsonKey(name: 'best_performance_wickets')
      final int bestPerformanceWickets}) = _$PlayerImpl;

  factory _Player.fromJson(Map<String, dynamic> json) = _$PlayerImpl.fromJson;

  /// Unique identifier for the player
  @override
  @JsonKey(name: 'id')
  String get id;

  /// Player's full name
  @override
  @JsonKey(name: 'name')
  String get name;

  /// Player's age
  @override
  @JsonKey(name: 'age')
  int get age;

  /// Player's primary role/specialization
  @override
  @JsonKey(name: 'specialization')
  String get specialization;

  /// Profile image URL
  @override
  @JsonKey(name: 'profile_image_url')
  String? get profileImageUrl;

  /// Comprehensive performance records
  @override
  @JsonKey(name: 'performance_records')
  List<PerformanceRecord> get performanceRecords;

  /// Total wickets taken
  @override
  @JsonKey(name: 'total_wickets')
  int get totalWickets;

  /// Total runs scored
  @override
  @JsonKey(name: 'total_runs')
  int get totalRuns;

  /// Best individual performance score
  @override
  @JsonKey(name: 'best_performance_runs')
  int get bestPerformanceRuns;
  @override
  @JsonKey(name: 'best_performance_wickets')
  int get bestPerformanceWickets;

  /// Create a copy of Player
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerImplCopyWith<_$PlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PerformanceRecord _$PerformanceRecordFromJson(Map<String, dynamic> json) {
  return _PerformanceRecord.fromJson(json);
}

/// @nodoc
mixin _$PerformanceRecord {
  /// Unique identifier for the performance record
  String? get id => throw _privateConstructorUsedError;

  /// Date of the performance
  @JsonKey(name: 'date')
  DateTime get date => throw _privateConstructorUsedError;

  /// Daily performance score
  @JsonKey(name: 'runs')
  int get runs => throw _privateConstructorUsedError;

  /// Wickets taken
  @JsonKey(name: 'wickets')
  int get wickets => throw _privateConstructorUsedError;

  /// Detailed match information
  @JsonKey(name: 'match_details')
  String? get matchDetails => throw _privateConstructorUsedError;

  /// URL of performance-related image
  @JsonKey(name: 'performance_image_url')
  String? get performanceImageUrl => throw _privateConstructorUsedError;

  /// Match location
  @JsonKey(name: 'location')
  String? get location => throw _privateConstructorUsedError;

  /// Serializes this PerformanceRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PerformanceRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PerformanceRecordCopyWith<PerformanceRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformanceRecordCopyWith<$Res> {
  factory $PerformanceRecordCopyWith(
          PerformanceRecord value, $Res Function(PerformanceRecord) then) =
      _$PerformanceRecordCopyWithImpl<$Res, PerformanceRecord>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'date') DateTime date,
      @JsonKey(name: 'runs') int runs,
      @JsonKey(name: 'wickets') int wickets,
      @JsonKey(name: 'match_details') String? matchDetails,
      @JsonKey(name: 'performance_image_url') String? performanceImageUrl,
      @JsonKey(name: 'location') String? location});
}

/// @nodoc
class _$PerformanceRecordCopyWithImpl<$Res, $Val extends PerformanceRecord>
    implements $PerformanceRecordCopyWith<$Res> {
  _$PerformanceRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PerformanceRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = null,
    Object? runs = null,
    Object? wickets = null,
    Object? matchDetails = freezed,
    Object? performanceImageUrl = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      runs: null == runs
          ? _value.runs
          : runs // ignore: cast_nullable_to_non_nullable
              as int,
      wickets: null == wickets
          ? _value.wickets
          : wickets // ignore: cast_nullable_to_non_nullable
              as int,
      matchDetails: freezed == matchDetails
          ? _value.matchDetails
          : matchDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      performanceImageUrl: freezed == performanceImageUrl
          ? _value.performanceImageUrl
          : performanceImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PerformanceRecordImplCopyWith<$Res>
    implements $PerformanceRecordCopyWith<$Res> {
  factory _$$PerformanceRecordImplCopyWith(_$PerformanceRecordImpl value,
          $Res Function(_$PerformanceRecordImpl) then) =
      __$$PerformanceRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'date') DateTime date,
      @JsonKey(name: 'runs') int runs,
      @JsonKey(name: 'wickets') int wickets,
      @JsonKey(name: 'match_details') String? matchDetails,
      @JsonKey(name: 'performance_image_url') String? performanceImageUrl,
      @JsonKey(name: 'location') String? location});
}

/// @nodoc
class __$$PerformanceRecordImplCopyWithImpl<$Res>
    extends _$PerformanceRecordCopyWithImpl<$Res, _$PerformanceRecordImpl>
    implements _$$PerformanceRecordImplCopyWith<$Res> {
  __$$PerformanceRecordImplCopyWithImpl(_$PerformanceRecordImpl _value,
      $Res Function(_$PerformanceRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of PerformanceRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = null,
    Object? runs = null,
    Object? wickets = null,
    Object? matchDetails = freezed,
    Object? performanceImageUrl = freezed,
    Object? location = freezed,
  }) {
    return _then(_$PerformanceRecordImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      runs: null == runs
          ? _value.runs
          : runs // ignore: cast_nullable_to_non_nullable
              as int,
      wickets: null == wickets
          ? _value.wickets
          : wickets // ignore: cast_nullable_to_non_nullable
              as int,
      matchDetails: freezed == matchDetails
          ? _value.matchDetails
          : matchDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      performanceImageUrl: freezed == performanceImageUrl
          ? _value.performanceImageUrl
          : performanceImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PerformanceRecordImpl implements _PerformanceRecord {
  const _$PerformanceRecordImpl(
      {this.id,
      @JsonKey(name: 'date') required this.date,
      @JsonKey(name: 'runs') required this.runs,
      @JsonKey(name: 'wickets') required this.wickets,
      @JsonKey(name: 'match_details') this.matchDetails,
      @JsonKey(name: 'performance_image_url') this.performanceImageUrl,
      @JsonKey(name: 'location') this.location});

  factory _$PerformanceRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$PerformanceRecordImplFromJson(json);

  /// Unique identifier for the performance record
  @override
  final String? id;

  /// Date of the performance
  @override
  @JsonKey(name: 'date')
  final DateTime date;

  /// Daily performance score
  @override
  @JsonKey(name: 'runs')
  final int runs;

  /// Wickets taken
  @override
  @JsonKey(name: 'wickets')
  final int wickets;

  /// Detailed match information
  @override
  @JsonKey(name: 'match_details')
  final String? matchDetails;

  /// URL of performance-related image
  @override
  @JsonKey(name: 'performance_image_url')
  final String? performanceImageUrl;

  /// Match location
  @override
  @JsonKey(name: 'location')
  final String? location;

  @override
  String toString() {
    return 'PerformanceRecord(id: $id, date: $date, runs: $runs, wickets: $wickets, matchDetails: $matchDetails, performanceImageUrl: $performanceImageUrl, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformanceRecordImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.runs, runs) || other.runs == runs) &&
            (identical(other.wickets, wickets) || other.wickets == wickets) &&
            (identical(other.matchDetails, matchDetails) ||
                other.matchDetails == matchDetails) &&
            (identical(other.performanceImageUrl, performanceImageUrl) ||
                other.performanceImageUrl == performanceImageUrl) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, date, runs, wickets,
      matchDetails, performanceImageUrl, location);

  /// Create a copy of PerformanceRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PerformanceRecordImplCopyWith<_$PerformanceRecordImpl> get copyWith =>
      __$$PerformanceRecordImplCopyWithImpl<_$PerformanceRecordImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PerformanceRecordImplToJson(
      this,
    );
  }
}

abstract class _PerformanceRecord implements PerformanceRecord {
  const factory _PerformanceRecord(
      {final String? id,
      @JsonKey(name: 'date') required final DateTime date,
      @JsonKey(name: 'runs') required final int runs,
      @JsonKey(name: 'wickets') required final int wickets,
      @JsonKey(name: 'match_details') final String? matchDetails,
      @JsonKey(name: 'performance_image_url') final String? performanceImageUrl,
      @JsonKey(name: 'location')
      final String? location}) = _$PerformanceRecordImpl;

  factory _PerformanceRecord.fromJson(Map<String, dynamic> json) =
      _$PerformanceRecordImpl.fromJson;

  /// Unique identifier for the performance record
  @override
  String? get id;

  /// Date of the performance
  @override
  @JsonKey(name: 'date')
  DateTime get date;

  /// Daily performance score
  @override
  @JsonKey(name: 'runs')
  int get runs;

  /// Wickets taken
  @override
  @JsonKey(name: 'wickets')
  int get wickets;

  /// Detailed match information
  @override
  @JsonKey(name: 'match_details')
  String? get matchDetails;

  /// URL of performance-related image
  @override
  @JsonKey(name: 'performance_image_url')
  String? get performanceImageUrl;

  /// Match location
  @override
  @JsonKey(name: 'location')
  String? get location;

  /// Create a copy of PerformanceRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PerformanceRecordImplCopyWith<_$PerformanceRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
