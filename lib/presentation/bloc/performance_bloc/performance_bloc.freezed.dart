// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'performance_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PerformanceEvent {
  String get playerId => throw _privateConstructorUsedError;
  PerformanceRecord get record => throw _privateConstructorUsedError;
  File? get performanceImage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String playerId, PerformanceRecord record, File? performanceImage)
        addPerformance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String playerId, PerformanceRecord record, File? performanceImage)?
        addPerformance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String playerId, PerformanceRecord record, File? performanceImage)?
        addPerformance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPerformance value) addPerformance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddPerformance value)? addPerformance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPerformance value)? addPerformance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PerformanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PerformanceEventCopyWith<PerformanceEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformanceEventCopyWith<$Res> {
  factory $PerformanceEventCopyWith(
          PerformanceEvent value, $Res Function(PerformanceEvent) then) =
      _$PerformanceEventCopyWithImpl<$Res, PerformanceEvent>;
  @useResult
  $Res call(
      {String playerId, PerformanceRecord record, File? performanceImage});

  $PerformanceRecordCopyWith<$Res> get record;
}

/// @nodoc
class _$PerformanceEventCopyWithImpl<$Res, $Val extends PerformanceEvent>
    implements $PerformanceEventCopyWith<$Res> {
  _$PerformanceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PerformanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerId = null,
    Object? record = null,
    Object? performanceImage = freezed,
  }) {
    return _then(_value.copyWith(
      playerId: null == playerId
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as String,
      record: null == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as PerformanceRecord,
      performanceImage: freezed == performanceImage
          ? _value.performanceImage
          : performanceImage // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }

  /// Create a copy of PerformanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PerformanceRecordCopyWith<$Res> get record {
    return $PerformanceRecordCopyWith<$Res>(_value.record, (value) {
      return _then(_value.copyWith(record: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddPerformanceImplCopyWith<$Res>
    implements $PerformanceEventCopyWith<$Res> {
  factory _$$AddPerformanceImplCopyWith(_$AddPerformanceImpl value,
          $Res Function(_$AddPerformanceImpl) then) =
      __$$AddPerformanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String playerId, PerformanceRecord record, File? performanceImage});

  @override
  $PerformanceRecordCopyWith<$Res> get record;
}

/// @nodoc
class __$$AddPerformanceImplCopyWithImpl<$Res>
    extends _$PerformanceEventCopyWithImpl<$Res, _$AddPerformanceImpl>
    implements _$$AddPerformanceImplCopyWith<$Res> {
  __$$AddPerformanceImplCopyWithImpl(
      _$AddPerformanceImpl _value, $Res Function(_$AddPerformanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of PerformanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerId = null,
    Object? record = null,
    Object? performanceImage = freezed,
  }) {
    return _then(_$AddPerformanceImpl(
      playerId: null == playerId
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as String,
      record: null == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as PerformanceRecord,
      performanceImage: freezed == performanceImage
          ? _value.performanceImage
          : performanceImage // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$AddPerformanceImpl implements _AddPerformance {
  const _$AddPerformanceImpl(
      {required this.playerId, required this.record, this.performanceImage});

  @override
  final String playerId;
  @override
  final PerformanceRecord record;
  @override
  final File? performanceImage;

  @override
  String toString() {
    return 'PerformanceEvent.addPerformance(playerId: $playerId, record: $record, performanceImage: $performanceImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPerformanceImpl &&
            (identical(other.playerId, playerId) ||
                other.playerId == playerId) &&
            (identical(other.record, record) || other.record == record) &&
            (identical(other.performanceImage, performanceImage) ||
                other.performanceImage == performanceImage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, playerId, record, performanceImage);

  /// Create a copy of PerformanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPerformanceImplCopyWith<_$AddPerformanceImpl> get copyWith =>
      __$$AddPerformanceImplCopyWithImpl<_$AddPerformanceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String playerId, PerformanceRecord record, File? performanceImage)
        addPerformance,
  }) {
    return addPerformance(playerId, record, performanceImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String playerId, PerformanceRecord record, File? performanceImage)?
        addPerformance,
  }) {
    return addPerformance?.call(playerId, record, performanceImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String playerId, PerformanceRecord record, File? performanceImage)?
        addPerformance,
    required TResult orElse(),
  }) {
    if (addPerformance != null) {
      return addPerformance(playerId, record, performanceImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPerformance value) addPerformance,
  }) {
    return addPerformance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddPerformance value)? addPerformance,
  }) {
    return addPerformance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPerformance value)? addPerformance,
    required TResult orElse(),
  }) {
    if (addPerformance != null) {
      return addPerformance(this);
    }
    return orElse();
  }
}

abstract class _AddPerformance implements PerformanceEvent {
  const factory _AddPerformance(
      {required final String playerId,
      required final PerformanceRecord record,
      final File? performanceImage}) = _$AddPerformanceImpl;

  @override
  String get playerId;
  @override
  PerformanceRecord get record;
  @override
  File? get performanceImage;

  /// Create a copy of PerformanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddPerformanceImplCopyWith<_$AddPerformanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PerformanceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adding,
    required TResult Function(Player player, bool isOffline) success,
    required TResult Function(String message, bool isOffline) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adding,
    TResult? Function(Player player, bool isOffline)? success,
    TResult? Function(String message, bool isOffline)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adding,
    TResult Function(Player player, bool isOffline)? success,
    TResult Function(String message, bool isOffline)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Adding value) adding,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Adding value)? adding,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Adding value)? adding,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformanceStateCopyWith<$Res> {
  factory $PerformanceStateCopyWith(
          PerformanceState value, $Res Function(PerformanceState) then) =
      _$PerformanceStateCopyWithImpl<$Res, PerformanceState>;
}

/// @nodoc
class _$PerformanceStateCopyWithImpl<$Res, $Val extends PerformanceState>
    implements $PerformanceStateCopyWith<$Res> {
  _$PerformanceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PerformanceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PerformanceStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PerformanceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PerformanceState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adding,
    required TResult Function(Player player, bool isOffline) success,
    required TResult Function(String message, bool isOffline) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adding,
    TResult? Function(Player player, bool isOffline)? success,
    TResult? Function(String message, bool isOffline)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adding,
    TResult Function(Player player, bool isOffline)? success,
    TResult Function(String message, bool isOffline)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Adding value) adding,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Adding value)? adding,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Adding value)? adding,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PerformanceState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AddingImplCopyWith<$Res> {
  factory _$$AddingImplCopyWith(
          _$AddingImpl value, $Res Function(_$AddingImpl) then) =
      __$$AddingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddingImplCopyWithImpl<$Res>
    extends _$PerformanceStateCopyWithImpl<$Res, _$AddingImpl>
    implements _$$AddingImplCopyWith<$Res> {
  __$$AddingImplCopyWithImpl(
      _$AddingImpl _value, $Res Function(_$AddingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PerformanceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddingImpl implements _Adding {
  const _$AddingImpl();

  @override
  String toString() {
    return 'PerformanceState.adding()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adding,
    required TResult Function(Player player, bool isOffline) success,
    required TResult Function(String message, bool isOffline) error,
  }) {
    return adding();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adding,
    TResult? Function(Player player, bool isOffline)? success,
    TResult? Function(String message, bool isOffline)? error,
  }) {
    return adding?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adding,
    TResult Function(Player player, bool isOffline)? success,
    TResult Function(String message, bool isOffline)? error,
    required TResult orElse(),
  }) {
    if (adding != null) {
      return adding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Adding value) adding,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return adding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Adding value)? adding,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return adding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Adding value)? adding,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (adding != null) {
      return adding(this);
    }
    return orElse();
  }
}

abstract class _Adding implements PerformanceState {
  const factory _Adding() = _$AddingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Player player, bool isOffline});

  $PlayerCopyWith<$Res> get player;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$PerformanceStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PerformanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
    Object? isOffline = null,
  }) {
    return _then(_$SuccessImpl(
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      isOffline: null == isOffline
          ? _value.isOffline
          : isOffline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of PerformanceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlayerCopyWith<$Res> get player {
    return $PlayerCopyWith<$Res>(_value.player, (value) {
      return _then(_value.copyWith(player: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({required this.player, required this.isOffline});

  @override
  final Player player;
  @override
  final bool isOffline;

  @override
  String toString() {
    return 'PerformanceState.success(player: $player, isOffline: $isOffline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.player, player) || other.player == player) &&
            (identical(other.isOffline, isOffline) ||
                other.isOffline == isOffline));
  }

  @override
  int get hashCode => Object.hash(runtimeType, player, isOffline);

  /// Create a copy of PerformanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adding,
    required TResult Function(Player player, bool isOffline) success,
    required TResult Function(String message, bool isOffline) error,
  }) {
    return success(player, isOffline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adding,
    TResult? Function(Player player, bool isOffline)? success,
    TResult? Function(String message, bool isOffline)? error,
  }) {
    return success?.call(player, isOffline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adding,
    TResult Function(Player player, bool isOffline)? success,
    TResult Function(String message, bool isOffline)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(player, isOffline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Adding value) adding,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Adding value)? adding,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Adding value)? adding,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements PerformanceState {
  const factory _Success(
      {required final Player player,
      required final bool isOffline}) = _$SuccessImpl;

  Player get player;
  bool get isOffline;

  /// Create a copy of PerformanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, bool isOffline});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$PerformanceStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PerformanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isOffline = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isOffline: null == isOffline
          ? _value.isOffline
          : isOffline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message, required this.isOffline});

  @override
  final String message;
  @override
  final bool isOffline;

  @override
  String toString() {
    return 'PerformanceState.error(message: $message, isOffline: $isOffline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isOffline, isOffline) ||
                other.isOffline == isOffline));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, isOffline);

  /// Create a copy of PerformanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adding,
    required TResult Function(Player player, bool isOffline) success,
    required TResult Function(String message, bool isOffline) error,
  }) {
    return error(message, isOffline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adding,
    TResult? Function(Player player, bool isOffline)? success,
    TResult? Function(String message, bool isOffline)? error,
  }) {
    return error?.call(message, isOffline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adding,
    TResult Function(Player player, bool isOffline)? success,
    TResult Function(String message, bool isOffline)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, isOffline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Adding value) adding,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Adding value)? adding,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Adding value)? adding,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PerformanceState {
  const factory _Error(
      {required final String message,
      required final bool isOffline}) = _$ErrorImpl;

  String get message;
  bool get isOffline;

  /// Create a copy of PerformanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
