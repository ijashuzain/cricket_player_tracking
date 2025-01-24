part of 'player_bloc.dart';

@freezed
class PlayerEvent with _$PlayerEvent {
  const factory PlayerEvent.fetchAllPlayers() = _FetchAllPlayers;

  const factory PlayerEvent.createPlayer({
    required Player player,
    File? profileImage,
  }) = _CreatePlayer;

  const factory PlayerEvent.deletePlayer({
    required String playerId,
  }) = _DeletePlayer;

  const factory PlayerEvent.updatePlayer({
    required Player player,
    File? profileImage,
  }) = _UpdatePlayer;

  const factory PlayerEvent.getPlayerById({
    required String playerId,
  }) = _GetPlayerById;

  const factory PlayerEvent.searchPlayers({
    required String query,
  }) = _SearchPlayers;

  const factory PlayerEvent.syncOfflineData() = _SyncOfflineData;
}