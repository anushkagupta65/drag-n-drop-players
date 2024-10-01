part of 'player_cubit.dart';

@freezed
class PlayerState with _$PlayerState {
  factory PlayerState({
    @Default([]) List<Player> players,
    @Default('') String draggedPlayerName,
    @Default(Offset.zero) Offset draggedPlayerPosition,
    @Default('') String draggedPlayerStatus,
    // @Default('') DateTime startTime,
    // @Default('') Duration elapsedTime,
  }) = _PlayerState;

  factory PlayerState.initial() => PlayerState(
        draggedPlayerPosition: Offset.zero,
        draggedPlayerName: '',
        draggedPlayerStatus: '',
        players: InitialPlayers.initialPlayers().map((player) {
          return player.copyWith(status: 'Off');
        }).toList(),
      );
}
