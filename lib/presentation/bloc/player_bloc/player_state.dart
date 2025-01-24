part of 'player_bloc.dart';

@freezed
class PlayerState with _$PlayerState {
  const PlayerState._();

  const factory PlayerState.initial() = _Initial;

  const factory PlayerState.loading({
    @Default(false) bool isOfflineSync,
  }) = _Loading;

  const factory PlayerState.loaded({
    required List<Player> players,
    @Default(false) bool hasOfflineData,
  }) = _Loaded;

  const factory PlayerState.performanceAdded({
    required Player updatedPlayer,
    @Default(false) bool savedOffline,
  }) = _PerformanceAdded;

  const factory PlayerState.error({
    required String message,
    @Default(false) bool hasOfflineData,
  }) = _Error;

  const factory PlayerState.playerDetails({required Player player}) = _PlayerDetails;


  bool get isLoading => maybeWhen(
    loading: (_) => true,
    orElse: () => false,
  );

  bool get hasOfflineData => maybeWhen(
    loaded: (_, hasOffline) => hasOffline,
    error: (_, hasOffline) => hasOffline,
    orElse: () => false,
  );
}
