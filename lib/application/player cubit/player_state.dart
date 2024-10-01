part of 'player_cubit.dart';

@freezed
class PlayerState with _$PlayerState {
  factory PlayerState({
    @Default([]) List<Player> players,
    @Default('') String playerID,
    @Default('') String playerStatus,
    @Default(null) Offset? playerPosition,
    @Default(null) DateTime? startTime,
    @Default(null) Duration? playerOnFieldTime,
  }) = _PlayerState;

  factory PlayerState.initial() => PlayerState(
       players: initialPlayers.map((player) {
          return player.copyWith(status: 'Off');
        }).toList(),
        playerID: '',
        playerPosition: null,
        startTime: null,
        playerOnFieldTime: null,
      );
}
