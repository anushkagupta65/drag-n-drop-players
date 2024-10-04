part of 'player_cubit.dart';

@freezed
class PlayerState with _$PlayerState {
  factory PlayerState({
    @Default([]) List<Player> players,
    @Default(null) Duration? playerOnFieldTime, 
  }) = _PlayerState;

  factory PlayerState.initial() => PlayerState(
        players: initialPlayers.map((player) {
          return player.copyWith(status: 'Off');
        }).toList(),
        playerOnFieldTime: null,
      );
}
