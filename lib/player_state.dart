part of 'player_cubit.dart';

@freezed
class PlayerState with _$PlayerState {
  factory PlayerState({
    @Default([]) List<Player> offFieldPlayers,
    @Default([]) List<Player> onFieldPlayers,
    @Default(false) bool isDragging,
    @Default(null) Player? draggedPlayer,
    @Default(Offset.zero) Offset draggedPlayerOffset,
  }) = _PlayerState;

  factory PlayerState.initial() => PlayerState(
        offFieldPlayers: InitialPlayers.offFieldPlayers,
        onFieldPlayers: [],
        isDragging: false,
        draggedPlayer: null,
        draggedPlayerOffset: Offset.zero,
      );
}
