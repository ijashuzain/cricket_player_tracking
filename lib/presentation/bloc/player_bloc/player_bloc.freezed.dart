// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllPlayers,
    required TResult Function(Player player, File? profileImage) createPlayer,
    required TResult Function(String playerId) deletePlayer,
    required TResult Function(Player player, File? profileImage) updatePlayer,
    required TResult Function(String playerId) getPlayerById,
    required TResult Function(String query) searchPlayers,
    required TResult Function() syncOfflineData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllPlayers,
    TResult? Function(Player player, File? profileImage)? createPlayer,
    TResult? Function(String playerId)? deletePlayer,
    TResult? Function(Player player, File? profileImage)? updatePlayer,
    TResult? Function(String playerId)? getPlayerById,
    TResult? Function(String query)? searchPlayers,
    TResult? Function()? syncOfflineData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllPlayers,
    TResult Function(Player player, File? profileImage)? createPlayer,
    TResult Function(String playerId)? deletePlayer,
    TResult Function(Player player, File? profileImage)? updatePlayer,
    TResult Function(String playerId)? getPlayerById,
    TResult Function(String query)? searchPlayers,
    TResult Function()? syncOfflineData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllPlayers value) fetchAllPlayers,
    required TResult Function(_CreatePlayer value) createPlayer,
    required TResult Function(_DeletePlayer value) deletePlayer,
    required TResult Function(_UpdatePlayer value) updatePlayer,
    required TResult Function(_GetPlayerById value) getPlayerById,
    required TResult Function(_SearchPlayers value) searchPlayers,
    required TResult Function(_SyncOfflineData value) syncOfflineData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllPlayers value)? fetchAllPlayers,
    TResult? Function(_CreatePlayer value)? createPlayer,
    TResult? Function(_DeletePlayer value)? deletePlayer,
    TResult? Function(_UpdatePlayer value)? updatePlayer,
    TResult? Function(_GetPlayerById value)? getPlayerById,
    TResult? Function(_SearchPlayers value)? searchPlayers,
    TResult? Function(_SyncOfflineData value)? syncOfflineData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllPlayers value)? fetchAllPlayers,
    TResult Function(_CreatePlayer value)? createPlayer,
    TResult Function(_DeletePlayer value)? deletePlayer,
    TResult Function(_UpdatePlayer value)? updatePlayer,
    TResult Function(_GetPlayerById value)? getPlayerById,
    TResult Function(_SearchPlayers value)? searchPlayers,
    TResult Function(_SyncOfflineData value)? syncOfflineData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerEventCopyWith<$Res> {
  factory $PlayerEventCopyWith(
          PlayerEvent value, $Res Function(PlayerEvent) then) =
      _$PlayerEventCopyWithImpl<$Res, PlayerEvent>;
}

/// @nodoc
class _$PlayerEventCopyWithImpl<$Res, $Val extends PlayerEvent>
    implements $PlayerEventCopyWith<$Res> {
  _$PlayerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchAllPlayersImplCopyWith<$Res> {
  factory _$$FetchAllPlayersImplCopyWith(_$FetchAllPlayersImpl value,
          $Res Function(_$FetchAllPlayersImpl) then) =
      __$$FetchAllPlayersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllPlayersImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$FetchAllPlayersImpl>
    implements _$$FetchAllPlayersImplCopyWith<$Res> {
  __$$FetchAllPlayersImplCopyWithImpl(
      _$FetchAllPlayersImpl _value, $Res Function(_$FetchAllPlayersImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchAllPlayersImpl implements _FetchAllPlayers {
  const _$FetchAllPlayersImpl();

  @override
  String toString() {
    return 'PlayerEvent.fetchAllPlayers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchAllPlayersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllPlayers,
    required TResult Function(Player player, File? profileImage) createPlayer,
    required TResult Function(String playerId) deletePlayer,
    required TResult Function(Player player, File? profileImage) updatePlayer,
    required TResult Function(String playerId) getPlayerById,
    required TResult Function(String query) searchPlayers,
    required TResult Function() syncOfflineData,
  }) {
    return fetchAllPlayers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllPlayers,
    TResult? Function(Player player, File? profileImage)? createPlayer,
    TResult? Function(String playerId)? deletePlayer,
    TResult? Function(Player player, File? profileImage)? updatePlayer,
    TResult? Function(String playerId)? getPlayerById,
    TResult? Function(String query)? searchPlayers,
    TResult? Function()? syncOfflineData,
  }) {
    return fetchAllPlayers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllPlayers,
    TResult Function(Player player, File? profileImage)? createPlayer,
    TResult Function(String playerId)? deletePlayer,
    TResult Function(Player player, File? profileImage)? updatePlayer,
    TResult Function(String playerId)? getPlayerById,
    TResult Function(String query)? searchPlayers,
    TResult Function()? syncOfflineData,
    required TResult orElse(),
  }) {
    if (fetchAllPlayers != null) {
      return fetchAllPlayers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllPlayers value) fetchAllPlayers,
    required TResult Function(_CreatePlayer value) createPlayer,
    required TResult Function(_DeletePlayer value) deletePlayer,
    required TResult Function(_UpdatePlayer value) updatePlayer,
    required TResult Function(_GetPlayerById value) getPlayerById,
    required TResult Function(_SearchPlayers value) searchPlayers,
    required TResult Function(_SyncOfflineData value) syncOfflineData,
  }) {
    return fetchAllPlayers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllPlayers value)? fetchAllPlayers,
    TResult? Function(_CreatePlayer value)? createPlayer,
    TResult? Function(_DeletePlayer value)? deletePlayer,
    TResult? Function(_UpdatePlayer value)? updatePlayer,
    TResult? Function(_GetPlayerById value)? getPlayerById,
    TResult? Function(_SearchPlayers value)? searchPlayers,
    TResult? Function(_SyncOfflineData value)? syncOfflineData,
  }) {
    return fetchAllPlayers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllPlayers value)? fetchAllPlayers,
    TResult Function(_CreatePlayer value)? createPlayer,
    TResult Function(_DeletePlayer value)? deletePlayer,
    TResult Function(_UpdatePlayer value)? updatePlayer,
    TResult Function(_GetPlayerById value)? getPlayerById,
    TResult Function(_SearchPlayers value)? searchPlayers,
    TResult Function(_SyncOfflineData value)? syncOfflineData,
    required TResult orElse(),
  }) {
    if (fetchAllPlayers != null) {
      return fetchAllPlayers(this);
    }
    return orElse();
  }
}

abstract class _FetchAllPlayers implements PlayerEvent {
  const factory _FetchAllPlayers() = _$FetchAllPlayersImpl;
}

/// @nodoc
abstract class _$$CreatePlayerImplCopyWith<$Res> {
  factory _$$CreatePlayerImplCopyWith(
          _$CreatePlayerImpl value, $Res Function(_$CreatePlayerImpl) then) =
      __$$CreatePlayerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Player player, File? profileImage});

  $PlayerCopyWith<$Res> get player;
}

/// @nodoc
class __$$CreatePlayerImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$CreatePlayerImpl>
    implements _$$CreatePlayerImplCopyWith<$Res> {
  __$$CreatePlayerImplCopyWithImpl(
      _$CreatePlayerImpl _value, $Res Function(_$CreatePlayerImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
    Object? profileImage = freezed,
  }) {
    return _then(_$CreatePlayerImpl(
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }

  /// Create a copy of PlayerEvent
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

class _$CreatePlayerImpl implements _CreatePlayer {
  const _$CreatePlayerImpl({required this.player, this.profileImage});

  @override
  final Player player;
  @override
  final File? profileImage;

  @override
  String toString() {
    return 'PlayerEvent.createPlayer(player: $player, profileImage: $profileImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePlayerImpl &&
            (identical(other.player, player) || other.player == player) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, player, profileImage);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePlayerImplCopyWith<_$CreatePlayerImpl> get copyWith =>
      __$$CreatePlayerImplCopyWithImpl<_$CreatePlayerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllPlayers,
    required TResult Function(Player player, File? profileImage) createPlayer,
    required TResult Function(String playerId) deletePlayer,
    required TResult Function(Player player, File? profileImage) updatePlayer,
    required TResult Function(String playerId) getPlayerById,
    required TResult Function(String query) searchPlayers,
    required TResult Function() syncOfflineData,
  }) {
    return createPlayer(player, profileImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllPlayers,
    TResult? Function(Player player, File? profileImage)? createPlayer,
    TResult? Function(String playerId)? deletePlayer,
    TResult? Function(Player player, File? profileImage)? updatePlayer,
    TResult? Function(String playerId)? getPlayerById,
    TResult? Function(String query)? searchPlayers,
    TResult? Function()? syncOfflineData,
  }) {
    return createPlayer?.call(player, profileImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllPlayers,
    TResult Function(Player player, File? profileImage)? createPlayer,
    TResult Function(String playerId)? deletePlayer,
    TResult Function(Player player, File? profileImage)? updatePlayer,
    TResult Function(String playerId)? getPlayerById,
    TResult Function(String query)? searchPlayers,
    TResult Function()? syncOfflineData,
    required TResult orElse(),
  }) {
    if (createPlayer != null) {
      return createPlayer(player, profileImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllPlayers value) fetchAllPlayers,
    required TResult Function(_CreatePlayer value) createPlayer,
    required TResult Function(_DeletePlayer value) deletePlayer,
    required TResult Function(_UpdatePlayer value) updatePlayer,
    required TResult Function(_GetPlayerById value) getPlayerById,
    required TResult Function(_SearchPlayers value) searchPlayers,
    required TResult Function(_SyncOfflineData value) syncOfflineData,
  }) {
    return createPlayer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllPlayers value)? fetchAllPlayers,
    TResult? Function(_CreatePlayer value)? createPlayer,
    TResult? Function(_DeletePlayer value)? deletePlayer,
    TResult? Function(_UpdatePlayer value)? updatePlayer,
    TResult? Function(_GetPlayerById value)? getPlayerById,
    TResult? Function(_SearchPlayers value)? searchPlayers,
    TResult? Function(_SyncOfflineData value)? syncOfflineData,
  }) {
    return createPlayer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllPlayers value)? fetchAllPlayers,
    TResult Function(_CreatePlayer value)? createPlayer,
    TResult Function(_DeletePlayer value)? deletePlayer,
    TResult Function(_UpdatePlayer value)? updatePlayer,
    TResult Function(_GetPlayerById value)? getPlayerById,
    TResult Function(_SearchPlayers value)? searchPlayers,
    TResult Function(_SyncOfflineData value)? syncOfflineData,
    required TResult orElse(),
  }) {
    if (createPlayer != null) {
      return createPlayer(this);
    }
    return orElse();
  }
}

abstract class _CreatePlayer implements PlayerEvent {
  const factory _CreatePlayer(
      {required final Player player,
      final File? profileImage}) = _$CreatePlayerImpl;

  Player get player;
  File? get profileImage;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatePlayerImplCopyWith<_$CreatePlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePlayerImplCopyWith<$Res> {
  factory _$$DeletePlayerImplCopyWith(
          _$DeletePlayerImpl value, $Res Function(_$DeletePlayerImpl) then) =
      __$$DeletePlayerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String playerId});
}

/// @nodoc
class __$$DeletePlayerImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$DeletePlayerImpl>
    implements _$$DeletePlayerImplCopyWith<$Res> {
  __$$DeletePlayerImplCopyWithImpl(
      _$DeletePlayerImpl _value, $Res Function(_$DeletePlayerImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerId = null,
  }) {
    return _then(_$DeletePlayerImpl(
      playerId: null == playerId
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeletePlayerImpl implements _DeletePlayer {
  const _$DeletePlayerImpl({required this.playerId});

  @override
  final String playerId;

  @override
  String toString() {
    return 'PlayerEvent.deletePlayer(playerId: $playerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePlayerImpl &&
            (identical(other.playerId, playerId) ||
                other.playerId == playerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playerId);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePlayerImplCopyWith<_$DeletePlayerImpl> get copyWith =>
      __$$DeletePlayerImplCopyWithImpl<_$DeletePlayerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllPlayers,
    required TResult Function(Player player, File? profileImage) createPlayer,
    required TResult Function(String playerId) deletePlayer,
    required TResult Function(Player player, File? profileImage) updatePlayer,
    required TResult Function(String playerId) getPlayerById,
    required TResult Function(String query) searchPlayers,
    required TResult Function() syncOfflineData,
  }) {
    return deletePlayer(playerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllPlayers,
    TResult? Function(Player player, File? profileImage)? createPlayer,
    TResult? Function(String playerId)? deletePlayer,
    TResult? Function(Player player, File? profileImage)? updatePlayer,
    TResult? Function(String playerId)? getPlayerById,
    TResult? Function(String query)? searchPlayers,
    TResult? Function()? syncOfflineData,
  }) {
    return deletePlayer?.call(playerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllPlayers,
    TResult Function(Player player, File? profileImage)? createPlayer,
    TResult Function(String playerId)? deletePlayer,
    TResult Function(Player player, File? profileImage)? updatePlayer,
    TResult Function(String playerId)? getPlayerById,
    TResult Function(String query)? searchPlayers,
    TResult Function()? syncOfflineData,
    required TResult orElse(),
  }) {
    if (deletePlayer != null) {
      return deletePlayer(playerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllPlayers value) fetchAllPlayers,
    required TResult Function(_CreatePlayer value) createPlayer,
    required TResult Function(_DeletePlayer value) deletePlayer,
    required TResult Function(_UpdatePlayer value) updatePlayer,
    required TResult Function(_GetPlayerById value) getPlayerById,
    required TResult Function(_SearchPlayers value) searchPlayers,
    required TResult Function(_SyncOfflineData value) syncOfflineData,
  }) {
    return deletePlayer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllPlayers value)? fetchAllPlayers,
    TResult? Function(_CreatePlayer value)? createPlayer,
    TResult? Function(_DeletePlayer value)? deletePlayer,
    TResult? Function(_UpdatePlayer value)? updatePlayer,
    TResult? Function(_GetPlayerById value)? getPlayerById,
    TResult? Function(_SearchPlayers value)? searchPlayers,
    TResult? Function(_SyncOfflineData value)? syncOfflineData,
  }) {
    return deletePlayer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllPlayers value)? fetchAllPlayers,
    TResult Function(_CreatePlayer value)? createPlayer,
    TResult Function(_DeletePlayer value)? deletePlayer,
    TResult Function(_UpdatePlayer value)? updatePlayer,
    TResult Function(_GetPlayerById value)? getPlayerById,
    TResult Function(_SearchPlayers value)? searchPlayers,
    TResult Function(_SyncOfflineData value)? syncOfflineData,
    required TResult orElse(),
  }) {
    if (deletePlayer != null) {
      return deletePlayer(this);
    }
    return orElse();
  }
}

abstract class _DeletePlayer implements PlayerEvent {
  const factory _DeletePlayer({required final String playerId}) =
      _$DeletePlayerImpl;

  String get playerId;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletePlayerImplCopyWith<_$DeletePlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePlayerImplCopyWith<$Res> {
  factory _$$UpdatePlayerImplCopyWith(
          _$UpdatePlayerImpl value, $Res Function(_$UpdatePlayerImpl) then) =
      __$$UpdatePlayerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Player player, File? profileImage});

  $PlayerCopyWith<$Res> get player;
}

/// @nodoc
class __$$UpdatePlayerImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$UpdatePlayerImpl>
    implements _$$UpdatePlayerImplCopyWith<$Res> {
  __$$UpdatePlayerImplCopyWithImpl(
      _$UpdatePlayerImpl _value, $Res Function(_$UpdatePlayerImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
    Object? profileImage = freezed,
  }) {
    return _then(_$UpdatePlayerImpl(
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }

  /// Create a copy of PlayerEvent
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

class _$UpdatePlayerImpl implements _UpdatePlayer {
  const _$UpdatePlayerImpl({required this.player, this.profileImage});

  @override
  final Player player;
  @override
  final File? profileImage;

  @override
  String toString() {
    return 'PlayerEvent.updatePlayer(player: $player, profileImage: $profileImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePlayerImpl &&
            (identical(other.player, player) || other.player == player) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, player, profileImage);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePlayerImplCopyWith<_$UpdatePlayerImpl> get copyWith =>
      __$$UpdatePlayerImplCopyWithImpl<_$UpdatePlayerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllPlayers,
    required TResult Function(Player player, File? profileImage) createPlayer,
    required TResult Function(String playerId) deletePlayer,
    required TResult Function(Player player, File? profileImage) updatePlayer,
    required TResult Function(String playerId) getPlayerById,
    required TResult Function(String query) searchPlayers,
    required TResult Function() syncOfflineData,
  }) {
    return updatePlayer(player, profileImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllPlayers,
    TResult? Function(Player player, File? profileImage)? createPlayer,
    TResult? Function(String playerId)? deletePlayer,
    TResult? Function(Player player, File? profileImage)? updatePlayer,
    TResult? Function(String playerId)? getPlayerById,
    TResult? Function(String query)? searchPlayers,
    TResult? Function()? syncOfflineData,
  }) {
    return updatePlayer?.call(player, profileImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllPlayers,
    TResult Function(Player player, File? profileImage)? createPlayer,
    TResult Function(String playerId)? deletePlayer,
    TResult Function(Player player, File? profileImage)? updatePlayer,
    TResult Function(String playerId)? getPlayerById,
    TResult Function(String query)? searchPlayers,
    TResult Function()? syncOfflineData,
    required TResult orElse(),
  }) {
    if (updatePlayer != null) {
      return updatePlayer(player, profileImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllPlayers value) fetchAllPlayers,
    required TResult Function(_CreatePlayer value) createPlayer,
    required TResult Function(_DeletePlayer value) deletePlayer,
    required TResult Function(_UpdatePlayer value) updatePlayer,
    required TResult Function(_GetPlayerById value) getPlayerById,
    required TResult Function(_SearchPlayers value) searchPlayers,
    required TResult Function(_SyncOfflineData value) syncOfflineData,
  }) {
    return updatePlayer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllPlayers value)? fetchAllPlayers,
    TResult? Function(_CreatePlayer value)? createPlayer,
    TResult? Function(_DeletePlayer value)? deletePlayer,
    TResult? Function(_UpdatePlayer value)? updatePlayer,
    TResult? Function(_GetPlayerById value)? getPlayerById,
    TResult? Function(_SearchPlayers value)? searchPlayers,
    TResult? Function(_SyncOfflineData value)? syncOfflineData,
  }) {
    return updatePlayer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllPlayers value)? fetchAllPlayers,
    TResult Function(_CreatePlayer value)? createPlayer,
    TResult Function(_DeletePlayer value)? deletePlayer,
    TResult Function(_UpdatePlayer value)? updatePlayer,
    TResult Function(_GetPlayerById value)? getPlayerById,
    TResult Function(_SearchPlayers value)? searchPlayers,
    TResult Function(_SyncOfflineData value)? syncOfflineData,
    required TResult orElse(),
  }) {
    if (updatePlayer != null) {
      return updatePlayer(this);
    }
    return orElse();
  }
}

abstract class _UpdatePlayer implements PlayerEvent {
  const factory _UpdatePlayer(
      {required final Player player,
      final File? profileImage}) = _$UpdatePlayerImpl;

  Player get player;
  File? get profileImage;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePlayerImplCopyWith<_$UpdatePlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPlayerByIdImplCopyWith<$Res> {
  factory _$$GetPlayerByIdImplCopyWith(
          _$GetPlayerByIdImpl value, $Res Function(_$GetPlayerByIdImpl) then) =
      __$$GetPlayerByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String playerId});
}

/// @nodoc
class __$$GetPlayerByIdImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$GetPlayerByIdImpl>
    implements _$$GetPlayerByIdImplCopyWith<$Res> {
  __$$GetPlayerByIdImplCopyWithImpl(
      _$GetPlayerByIdImpl _value, $Res Function(_$GetPlayerByIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerId = null,
  }) {
    return _then(_$GetPlayerByIdImpl(
      playerId: null == playerId
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPlayerByIdImpl implements _GetPlayerById {
  const _$GetPlayerByIdImpl({required this.playerId});

  @override
  final String playerId;

  @override
  String toString() {
    return 'PlayerEvent.getPlayerById(playerId: $playerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPlayerByIdImpl &&
            (identical(other.playerId, playerId) ||
                other.playerId == playerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playerId);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPlayerByIdImplCopyWith<_$GetPlayerByIdImpl> get copyWith =>
      __$$GetPlayerByIdImplCopyWithImpl<_$GetPlayerByIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllPlayers,
    required TResult Function(Player player, File? profileImage) createPlayer,
    required TResult Function(String playerId) deletePlayer,
    required TResult Function(Player player, File? profileImage) updatePlayer,
    required TResult Function(String playerId) getPlayerById,
    required TResult Function(String query) searchPlayers,
    required TResult Function() syncOfflineData,
  }) {
    return getPlayerById(playerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllPlayers,
    TResult? Function(Player player, File? profileImage)? createPlayer,
    TResult? Function(String playerId)? deletePlayer,
    TResult? Function(Player player, File? profileImage)? updatePlayer,
    TResult? Function(String playerId)? getPlayerById,
    TResult? Function(String query)? searchPlayers,
    TResult? Function()? syncOfflineData,
  }) {
    return getPlayerById?.call(playerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllPlayers,
    TResult Function(Player player, File? profileImage)? createPlayer,
    TResult Function(String playerId)? deletePlayer,
    TResult Function(Player player, File? profileImage)? updatePlayer,
    TResult Function(String playerId)? getPlayerById,
    TResult Function(String query)? searchPlayers,
    TResult Function()? syncOfflineData,
    required TResult orElse(),
  }) {
    if (getPlayerById != null) {
      return getPlayerById(playerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllPlayers value) fetchAllPlayers,
    required TResult Function(_CreatePlayer value) createPlayer,
    required TResult Function(_DeletePlayer value) deletePlayer,
    required TResult Function(_UpdatePlayer value) updatePlayer,
    required TResult Function(_GetPlayerById value) getPlayerById,
    required TResult Function(_SearchPlayers value) searchPlayers,
    required TResult Function(_SyncOfflineData value) syncOfflineData,
  }) {
    return getPlayerById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllPlayers value)? fetchAllPlayers,
    TResult? Function(_CreatePlayer value)? createPlayer,
    TResult? Function(_DeletePlayer value)? deletePlayer,
    TResult? Function(_UpdatePlayer value)? updatePlayer,
    TResult? Function(_GetPlayerById value)? getPlayerById,
    TResult? Function(_SearchPlayers value)? searchPlayers,
    TResult? Function(_SyncOfflineData value)? syncOfflineData,
  }) {
    return getPlayerById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllPlayers value)? fetchAllPlayers,
    TResult Function(_CreatePlayer value)? createPlayer,
    TResult Function(_DeletePlayer value)? deletePlayer,
    TResult Function(_UpdatePlayer value)? updatePlayer,
    TResult Function(_GetPlayerById value)? getPlayerById,
    TResult Function(_SearchPlayers value)? searchPlayers,
    TResult Function(_SyncOfflineData value)? syncOfflineData,
    required TResult orElse(),
  }) {
    if (getPlayerById != null) {
      return getPlayerById(this);
    }
    return orElse();
  }
}

abstract class _GetPlayerById implements PlayerEvent {
  const factory _GetPlayerById({required final String playerId}) =
      _$GetPlayerByIdImpl;

  String get playerId;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPlayerByIdImplCopyWith<_$GetPlayerByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchPlayersImplCopyWith<$Res> {
  factory _$$SearchPlayersImplCopyWith(
          _$SearchPlayersImpl value, $Res Function(_$SearchPlayersImpl) then) =
      __$$SearchPlayersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchPlayersImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$SearchPlayersImpl>
    implements _$$SearchPlayersImplCopyWith<$Res> {
  __$$SearchPlayersImplCopyWithImpl(
      _$SearchPlayersImpl _value, $Res Function(_$SearchPlayersImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchPlayersImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchPlayersImpl implements _SearchPlayers {
  const _$SearchPlayersImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'PlayerEvent.searchPlayers(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPlayersImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPlayersImplCopyWith<_$SearchPlayersImpl> get copyWith =>
      __$$SearchPlayersImplCopyWithImpl<_$SearchPlayersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllPlayers,
    required TResult Function(Player player, File? profileImage) createPlayer,
    required TResult Function(String playerId) deletePlayer,
    required TResult Function(Player player, File? profileImage) updatePlayer,
    required TResult Function(String playerId) getPlayerById,
    required TResult Function(String query) searchPlayers,
    required TResult Function() syncOfflineData,
  }) {
    return searchPlayers(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllPlayers,
    TResult? Function(Player player, File? profileImage)? createPlayer,
    TResult? Function(String playerId)? deletePlayer,
    TResult? Function(Player player, File? profileImage)? updatePlayer,
    TResult? Function(String playerId)? getPlayerById,
    TResult? Function(String query)? searchPlayers,
    TResult? Function()? syncOfflineData,
  }) {
    return searchPlayers?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllPlayers,
    TResult Function(Player player, File? profileImage)? createPlayer,
    TResult Function(String playerId)? deletePlayer,
    TResult Function(Player player, File? profileImage)? updatePlayer,
    TResult Function(String playerId)? getPlayerById,
    TResult Function(String query)? searchPlayers,
    TResult Function()? syncOfflineData,
    required TResult orElse(),
  }) {
    if (searchPlayers != null) {
      return searchPlayers(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllPlayers value) fetchAllPlayers,
    required TResult Function(_CreatePlayer value) createPlayer,
    required TResult Function(_DeletePlayer value) deletePlayer,
    required TResult Function(_UpdatePlayer value) updatePlayer,
    required TResult Function(_GetPlayerById value) getPlayerById,
    required TResult Function(_SearchPlayers value) searchPlayers,
    required TResult Function(_SyncOfflineData value) syncOfflineData,
  }) {
    return searchPlayers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllPlayers value)? fetchAllPlayers,
    TResult? Function(_CreatePlayer value)? createPlayer,
    TResult? Function(_DeletePlayer value)? deletePlayer,
    TResult? Function(_UpdatePlayer value)? updatePlayer,
    TResult? Function(_GetPlayerById value)? getPlayerById,
    TResult? Function(_SearchPlayers value)? searchPlayers,
    TResult? Function(_SyncOfflineData value)? syncOfflineData,
  }) {
    return searchPlayers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllPlayers value)? fetchAllPlayers,
    TResult Function(_CreatePlayer value)? createPlayer,
    TResult Function(_DeletePlayer value)? deletePlayer,
    TResult Function(_UpdatePlayer value)? updatePlayer,
    TResult Function(_GetPlayerById value)? getPlayerById,
    TResult Function(_SearchPlayers value)? searchPlayers,
    TResult Function(_SyncOfflineData value)? syncOfflineData,
    required TResult orElse(),
  }) {
    if (searchPlayers != null) {
      return searchPlayers(this);
    }
    return orElse();
  }
}

abstract class _SearchPlayers implements PlayerEvent {
  const factory _SearchPlayers({required final String query}) =
      _$SearchPlayersImpl;

  String get query;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchPlayersImplCopyWith<_$SearchPlayersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SyncOfflineDataImplCopyWith<$Res> {
  factory _$$SyncOfflineDataImplCopyWith(_$SyncOfflineDataImpl value,
          $Res Function(_$SyncOfflineDataImpl) then) =
      __$$SyncOfflineDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SyncOfflineDataImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$SyncOfflineDataImpl>
    implements _$$SyncOfflineDataImplCopyWith<$Res> {
  __$$SyncOfflineDataImplCopyWithImpl(
      _$SyncOfflineDataImpl _value, $Res Function(_$SyncOfflineDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SyncOfflineDataImpl implements _SyncOfflineData {
  const _$SyncOfflineDataImpl();

  @override
  String toString() {
    return 'PlayerEvent.syncOfflineData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SyncOfflineDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllPlayers,
    required TResult Function(Player player, File? profileImage) createPlayer,
    required TResult Function(String playerId) deletePlayer,
    required TResult Function(Player player, File? profileImage) updatePlayer,
    required TResult Function(String playerId) getPlayerById,
    required TResult Function(String query) searchPlayers,
    required TResult Function() syncOfflineData,
  }) {
    return syncOfflineData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllPlayers,
    TResult? Function(Player player, File? profileImage)? createPlayer,
    TResult? Function(String playerId)? deletePlayer,
    TResult? Function(Player player, File? profileImage)? updatePlayer,
    TResult? Function(String playerId)? getPlayerById,
    TResult? Function(String query)? searchPlayers,
    TResult? Function()? syncOfflineData,
  }) {
    return syncOfflineData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllPlayers,
    TResult Function(Player player, File? profileImage)? createPlayer,
    TResult Function(String playerId)? deletePlayer,
    TResult Function(Player player, File? profileImage)? updatePlayer,
    TResult Function(String playerId)? getPlayerById,
    TResult Function(String query)? searchPlayers,
    TResult Function()? syncOfflineData,
    required TResult orElse(),
  }) {
    if (syncOfflineData != null) {
      return syncOfflineData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllPlayers value) fetchAllPlayers,
    required TResult Function(_CreatePlayer value) createPlayer,
    required TResult Function(_DeletePlayer value) deletePlayer,
    required TResult Function(_UpdatePlayer value) updatePlayer,
    required TResult Function(_GetPlayerById value) getPlayerById,
    required TResult Function(_SearchPlayers value) searchPlayers,
    required TResult Function(_SyncOfflineData value) syncOfflineData,
  }) {
    return syncOfflineData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllPlayers value)? fetchAllPlayers,
    TResult? Function(_CreatePlayer value)? createPlayer,
    TResult? Function(_DeletePlayer value)? deletePlayer,
    TResult? Function(_UpdatePlayer value)? updatePlayer,
    TResult? Function(_GetPlayerById value)? getPlayerById,
    TResult? Function(_SearchPlayers value)? searchPlayers,
    TResult? Function(_SyncOfflineData value)? syncOfflineData,
  }) {
    return syncOfflineData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllPlayers value)? fetchAllPlayers,
    TResult Function(_CreatePlayer value)? createPlayer,
    TResult Function(_DeletePlayer value)? deletePlayer,
    TResult Function(_UpdatePlayer value)? updatePlayer,
    TResult Function(_GetPlayerById value)? getPlayerById,
    TResult Function(_SearchPlayers value)? searchPlayers,
    TResult Function(_SyncOfflineData value)? syncOfflineData,
    required TResult orElse(),
  }) {
    if (syncOfflineData != null) {
      return syncOfflineData(this);
    }
    return orElse();
  }
}

abstract class _SyncOfflineData implements PlayerEvent {
  const factory _SyncOfflineData() = _$SyncOfflineDataImpl;
}

/// @nodoc
mixin _$PlayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isOfflineSync) loading,
    required TResult Function(List<Player> players, bool hasOfflineData) loaded,
    required TResult Function(Player updatedPlayer, bool savedOffline)
        performanceAdded,
    required TResult Function(String message, bool hasOfflineData) error,
    required TResult Function(Player player) playerDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isOfflineSync)? loading,
    TResult? Function(List<Player> players, bool hasOfflineData)? loaded,
    TResult? Function(Player updatedPlayer, bool savedOffline)?
        performanceAdded,
    TResult? Function(String message, bool hasOfflineData)? error,
    TResult? Function(Player player)? playerDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isOfflineSync)? loading,
    TResult Function(List<Player> players, bool hasOfflineData)? loaded,
    TResult Function(Player updatedPlayer, bool savedOffline)? performanceAdded,
    TResult Function(String message, bool hasOfflineData)? error,
    TResult Function(Player player)? playerDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_PerformanceAdded value) performanceAdded,
    required TResult Function(_Error value) error,
    required TResult Function(_PlayerDetails value) playerDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_PerformanceAdded value)? performanceAdded,
    TResult? Function(_Error value)? error,
    TResult? Function(_PlayerDetails value)? playerDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_PerformanceAdded value)? performanceAdded,
    TResult Function(_Error value)? error,
    TResult Function(_PlayerDetails value)? playerDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerStateCopyWith<$Res> {
  factory $PlayerStateCopyWith(
          PlayerState value, $Res Function(PlayerState) then) =
      _$PlayerStateCopyWithImpl<$Res, PlayerState>;
}

/// @nodoc
class _$PlayerStateCopyWithImpl<$Res, $Val extends PlayerState>
    implements $PlayerStateCopyWith<$Res> {
  _$PlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerState
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
    extends _$PlayerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'PlayerState.initial()';
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
    required TResult Function(bool isOfflineSync) loading,
    required TResult Function(List<Player> players, bool hasOfflineData) loaded,
    required TResult Function(Player updatedPlayer, bool savedOffline)
        performanceAdded,
    required TResult Function(String message, bool hasOfflineData) error,
    required TResult Function(Player player) playerDetails,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isOfflineSync)? loading,
    TResult? Function(List<Player> players, bool hasOfflineData)? loaded,
    TResult? Function(Player updatedPlayer, bool savedOffline)?
        performanceAdded,
    TResult? Function(String message, bool hasOfflineData)? error,
    TResult? Function(Player player)? playerDetails,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isOfflineSync)? loading,
    TResult Function(List<Player> players, bool hasOfflineData)? loaded,
    TResult Function(Player updatedPlayer, bool savedOffline)? performanceAdded,
    TResult Function(String message, bool hasOfflineData)? error,
    TResult Function(Player player)? playerDetails,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_PerformanceAdded value) performanceAdded,
    required TResult Function(_Error value) error,
    required TResult Function(_PlayerDetails value) playerDetails,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_PerformanceAdded value)? performanceAdded,
    TResult? Function(_Error value)? error,
    TResult? Function(_PlayerDetails value)? playerDetails,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_PerformanceAdded value)? performanceAdded,
    TResult Function(_Error value)? error,
    TResult Function(_PlayerDetails value)? playerDetails,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends PlayerState {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isOfflineSync});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOfflineSync = null,
  }) {
    return _then(_$LoadingImpl(
      isOfflineSync: null == isOfflineSync
          ? _value.isOfflineSync
          : isOfflineSync // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl({this.isOfflineSync = false}) : super._();

  @override
  @JsonKey()
  final bool isOfflineSync;

  @override
  String toString() {
    return 'PlayerState.loading(isOfflineSync: $isOfflineSync)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.isOfflineSync, isOfflineSync) ||
                other.isOfflineSync == isOfflineSync));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isOfflineSync);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isOfflineSync) loading,
    required TResult Function(List<Player> players, bool hasOfflineData) loaded,
    required TResult Function(Player updatedPlayer, bool savedOffline)
        performanceAdded,
    required TResult Function(String message, bool hasOfflineData) error,
    required TResult Function(Player player) playerDetails,
  }) {
    return loading(isOfflineSync);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isOfflineSync)? loading,
    TResult? Function(List<Player> players, bool hasOfflineData)? loaded,
    TResult? Function(Player updatedPlayer, bool savedOffline)?
        performanceAdded,
    TResult? Function(String message, bool hasOfflineData)? error,
    TResult? Function(Player player)? playerDetails,
  }) {
    return loading?.call(isOfflineSync);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isOfflineSync)? loading,
    TResult Function(List<Player> players, bool hasOfflineData)? loaded,
    TResult Function(Player updatedPlayer, bool savedOffline)? performanceAdded,
    TResult Function(String message, bool hasOfflineData)? error,
    TResult Function(Player player)? playerDetails,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isOfflineSync);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_PerformanceAdded value) performanceAdded,
    required TResult Function(_Error value) error,
    required TResult Function(_PlayerDetails value) playerDetails,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_PerformanceAdded value)? performanceAdded,
    TResult? Function(_Error value)? error,
    TResult? Function(_PlayerDetails value)? playerDetails,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_PerformanceAdded value)? performanceAdded,
    TResult Function(_Error value)? error,
    TResult Function(_PlayerDetails value)? playerDetails,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends PlayerState {
  const factory _Loading({final bool isOfflineSync}) = _$LoadingImpl;
  const _Loading._() : super._();

  bool get isOfflineSync;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Player> players, bool hasOfflineData});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? hasOfflineData = null,
  }) {
    return _then(_$LoadedImpl(
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      hasOfflineData: null == hasOfflineData
          ? _value.hasOfflineData
          : hasOfflineData // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadedImpl extends _Loaded {
  const _$LoadedImpl(
      {required final List<Player> players, this.hasOfflineData = false})
      : _players = players,
        super._();

  final List<Player> _players;
  @override
  List<Player> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  @override
  @JsonKey()
  final bool hasOfflineData;

  @override
  String toString() {
    return 'PlayerState.loaded(players: $players, hasOfflineData: $hasOfflineData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            (identical(other.hasOfflineData, hasOfflineData) ||
                other.hasOfflineData == hasOfflineData));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_players), hasOfflineData);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isOfflineSync) loading,
    required TResult Function(List<Player> players, bool hasOfflineData) loaded,
    required TResult Function(Player updatedPlayer, bool savedOffline)
        performanceAdded,
    required TResult Function(String message, bool hasOfflineData) error,
    required TResult Function(Player player) playerDetails,
  }) {
    return loaded(players, hasOfflineData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isOfflineSync)? loading,
    TResult? Function(List<Player> players, bool hasOfflineData)? loaded,
    TResult? Function(Player updatedPlayer, bool savedOffline)?
        performanceAdded,
    TResult? Function(String message, bool hasOfflineData)? error,
    TResult? Function(Player player)? playerDetails,
  }) {
    return loaded?.call(players, hasOfflineData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isOfflineSync)? loading,
    TResult Function(List<Player> players, bool hasOfflineData)? loaded,
    TResult Function(Player updatedPlayer, bool savedOffline)? performanceAdded,
    TResult Function(String message, bool hasOfflineData)? error,
    TResult Function(Player player)? playerDetails,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(players, hasOfflineData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_PerformanceAdded value) performanceAdded,
    required TResult Function(_Error value) error,
    required TResult Function(_PlayerDetails value) playerDetails,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_PerformanceAdded value)? performanceAdded,
    TResult? Function(_Error value)? error,
    TResult? Function(_PlayerDetails value)? playerDetails,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_PerformanceAdded value)? performanceAdded,
    TResult Function(_Error value)? error,
    TResult Function(_PlayerDetails value)? playerDetails,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded extends PlayerState {
  const factory _Loaded(
      {required final List<Player> players,
      final bool hasOfflineData}) = _$LoadedImpl;
  const _Loaded._() : super._();

  List<Player> get players;
  bool get hasOfflineData;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PerformanceAddedImplCopyWith<$Res> {
  factory _$$PerformanceAddedImplCopyWith(_$PerformanceAddedImpl value,
          $Res Function(_$PerformanceAddedImpl) then) =
      __$$PerformanceAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Player updatedPlayer, bool savedOffline});

  $PlayerCopyWith<$Res> get updatedPlayer;
}

/// @nodoc
class __$$PerformanceAddedImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PerformanceAddedImpl>
    implements _$$PerformanceAddedImplCopyWith<$Res> {
  __$$PerformanceAddedImplCopyWithImpl(_$PerformanceAddedImpl _value,
      $Res Function(_$PerformanceAddedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedPlayer = null,
    Object? savedOffline = null,
  }) {
    return _then(_$PerformanceAddedImpl(
      updatedPlayer: null == updatedPlayer
          ? _value.updatedPlayer
          : updatedPlayer // ignore: cast_nullable_to_non_nullable
              as Player,
      savedOffline: null == savedOffline
          ? _value.savedOffline
          : savedOffline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlayerCopyWith<$Res> get updatedPlayer {
    return $PlayerCopyWith<$Res>(_value.updatedPlayer, (value) {
      return _then(_value.copyWith(updatedPlayer: value));
    });
  }
}

/// @nodoc

class _$PerformanceAddedImpl extends _PerformanceAdded {
  const _$PerformanceAddedImpl(
      {required this.updatedPlayer, this.savedOffline = false})
      : super._();

  @override
  final Player updatedPlayer;
  @override
  @JsonKey()
  final bool savedOffline;

  @override
  String toString() {
    return 'PlayerState.performanceAdded(updatedPlayer: $updatedPlayer, savedOffline: $savedOffline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformanceAddedImpl &&
            (identical(other.updatedPlayer, updatedPlayer) ||
                other.updatedPlayer == updatedPlayer) &&
            (identical(other.savedOffline, savedOffline) ||
                other.savedOffline == savedOffline));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedPlayer, savedOffline);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PerformanceAddedImplCopyWith<_$PerformanceAddedImpl> get copyWith =>
      __$$PerformanceAddedImplCopyWithImpl<_$PerformanceAddedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isOfflineSync) loading,
    required TResult Function(List<Player> players, bool hasOfflineData) loaded,
    required TResult Function(Player updatedPlayer, bool savedOffline)
        performanceAdded,
    required TResult Function(String message, bool hasOfflineData) error,
    required TResult Function(Player player) playerDetails,
  }) {
    return performanceAdded(updatedPlayer, savedOffline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isOfflineSync)? loading,
    TResult? Function(List<Player> players, bool hasOfflineData)? loaded,
    TResult? Function(Player updatedPlayer, bool savedOffline)?
        performanceAdded,
    TResult? Function(String message, bool hasOfflineData)? error,
    TResult? Function(Player player)? playerDetails,
  }) {
    return performanceAdded?.call(updatedPlayer, savedOffline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isOfflineSync)? loading,
    TResult Function(List<Player> players, bool hasOfflineData)? loaded,
    TResult Function(Player updatedPlayer, bool savedOffline)? performanceAdded,
    TResult Function(String message, bool hasOfflineData)? error,
    TResult Function(Player player)? playerDetails,
    required TResult orElse(),
  }) {
    if (performanceAdded != null) {
      return performanceAdded(updatedPlayer, savedOffline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_PerformanceAdded value) performanceAdded,
    required TResult Function(_Error value) error,
    required TResult Function(_PlayerDetails value) playerDetails,
  }) {
    return performanceAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_PerformanceAdded value)? performanceAdded,
    TResult? Function(_Error value)? error,
    TResult? Function(_PlayerDetails value)? playerDetails,
  }) {
    return performanceAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_PerformanceAdded value)? performanceAdded,
    TResult Function(_Error value)? error,
    TResult Function(_PlayerDetails value)? playerDetails,
    required TResult orElse(),
  }) {
    if (performanceAdded != null) {
      return performanceAdded(this);
    }
    return orElse();
  }
}

abstract class _PerformanceAdded extends PlayerState {
  const factory _PerformanceAdded(
      {required final Player updatedPlayer,
      final bool savedOffline}) = _$PerformanceAddedImpl;
  const _PerformanceAdded._() : super._();

  Player get updatedPlayer;
  bool get savedOffline;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PerformanceAddedImplCopyWith<_$PerformanceAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, bool hasOfflineData});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? hasOfflineData = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      hasOfflineData: null == hasOfflineData
          ? _value.hasOfflineData
          : hasOfflineData // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ErrorImpl extends _Error {
  const _$ErrorImpl({required this.message, this.hasOfflineData = false})
      : super._();

  @override
  final String message;
  @override
  @JsonKey()
  final bool hasOfflineData;

  @override
  String toString() {
    return 'PlayerState.error(message: $message, hasOfflineData: $hasOfflineData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.hasOfflineData, hasOfflineData) ||
                other.hasOfflineData == hasOfflineData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, hasOfflineData);

  /// Create a copy of PlayerState
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
    required TResult Function(bool isOfflineSync) loading,
    required TResult Function(List<Player> players, bool hasOfflineData) loaded,
    required TResult Function(Player updatedPlayer, bool savedOffline)
        performanceAdded,
    required TResult Function(String message, bool hasOfflineData) error,
    required TResult Function(Player player) playerDetails,
  }) {
    return error(message, hasOfflineData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isOfflineSync)? loading,
    TResult? Function(List<Player> players, bool hasOfflineData)? loaded,
    TResult? Function(Player updatedPlayer, bool savedOffline)?
        performanceAdded,
    TResult? Function(String message, bool hasOfflineData)? error,
    TResult? Function(Player player)? playerDetails,
  }) {
    return error?.call(message, hasOfflineData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isOfflineSync)? loading,
    TResult Function(List<Player> players, bool hasOfflineData)? loaded,
    TResult Function(Player updatedPlayer, bool savedOffline)? performanceAdded,
    TResult Function(String message, bool hasOfflineData)? error,
    TResult Function(Player player)? playerDetails,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, hasOfflineData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_PerformanceAdded value) performanceAdded,
    required TResult Function(_Error value) error,
    required TResult Function(_PlayerDetails value) playerDetails,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_PerformanceAdded value)? performanceAdded,
    TResult? Function(_Error value)? error,
    TResult? Function(_PlayerDetails value)? playerDetails,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_PerformanceAdded value)? performanceAdded,
    TResult Function(_Error value)? error,
    TResult Function(_PlayerDetails value)? playerDetails,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends PlayerState {
  const factory _Error(
      {required final String message, final bool hasOfflineData}) = _$ErrorImpl;
  const _Error._() : super._();

  String get message;
  bool get hasOfflineData;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayerDetailsImplCopyWith<$Res> {
  factory _$$PlayerDetailsImplCopyWith(
          _$PlayerDetailsImpl value, $Res Function(_$PlayerDetailsImpl) then) =
      __$$PlayerDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Player player});

  $PlayerCopyWith<$Res> get player;
}

/// @nodoc
class __$$PlayerDetailsImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerDetailsImpl>
    implements _$$PlayerDetailsImplCopyWith<$Res> {
  __$$PlayerDetailsImplCopyWithImpl(
      _$PlayerDetailsImpl _value, $Res Function(_$PlayerDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
  }) {
    return _then(_$PlayerDetailsImpl(
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
    ));
  }

  /// Create a copy of PlayerState
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

class _$PlayerDetailsImpl extends _PlayerDetails {
  const _$PlayerDetailsImpl({required this.player}) : super._();

  @override
  final Player player;

  @override
  String toString() {
    return 'PlayerState.playerDetails(player: $player)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerDetailsImpl &&
            (identical(other.player, player) || other.player == player));
  }

  @override
  int get hashCode => Object.hash(runtimeType, player);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerDetailsImplCopyWith<_$PlayerDetailsImpl> get copyWith =>
      __$$PlayerDetailsImplCopyWithImpl<_$PlayerDetailsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isOfflineSync) loading,
    required TResult Function(List<Player> players, bool hasOfflineData) loaded,
    required TResult Function(Player updatedPlayer, bool savedOffline)
        performanceAdded,
    required TResult Function(String message, bool hasOfflineData) error,
    required TResult Function(Player player) playerDetails,
  }) {
    return playerDetails(player);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isOfflineSync)? loading,
    TResult? Function(List<Player> players, bool hasOfflineData)? loaded,
    TResult? Function(Player updatedPlayer, bool savedOffline)?
        performanceAdded,
    TResult? Function(String message, bool hasOfflineData)? error,
    TResult? Function(Player player)? playerDetails,
  }) {
    return playerDetails?.call(player);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isOfflineSync)? loading,
    TResult Function(List<Player> players, bool hasOfflineData)? loaded,
    TResult Function(Player updatedPlayer, bool savedOffline)? performanceAdded,
    TResult Function(String message, bool hasOfflineData)? error,
    TResult Function(Player player)? playerDetails,
    required TResult orElse(),
  }) {
    if (playerDetails != null) {
      return playerDetails(player);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_PerformanceAdded value) performanceAdded,
    required TResult Function(_Error value) error,
    required TResult Function(_PlayerDetails value) playerDetails,
  }) {
    return playerDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_PerformanceAdded value)? performanceAdded,
    TResult? Function(_Error value)? error,
    TResult? Function(_PlayerDetails value)? playerDetails,
  }) {
    return playerDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_PerformanceAdded value)? performanceAdded,
    TResult Function(_Error value)? error,
    TResult Function(_PlayerDetails value)? playerDetails,
    required TResult orElse(),
  }) {
    if (playerDetails != null) {
      return playerDetails(this);
    }
    return orElse();
  }
}

abstract class _PlayerDetails extends PlayerState {
  const factory _PlayerDetails({required final Player player}) =
      _$PlayerDetailsImpl;
  const _PlayerDetails._() : super._();

  Player get player;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerDetailsImplCopyWith<_$PlayerDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
