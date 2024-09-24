import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'player_model.dart';
import 'players.dart';

part 'player_state.dart';
part 'player_cubit.freezed.dart';

class PlayerCubit extends Cubit<PlayerState> {
  PlayerCubit() : super(PlayerState.initial());

  void startDragging(Player player) {
    emit(state.copyWith(
      isDragging: true,
      draggedPlayer: player,
      draggedPlayerStatus: 'Dragging ${player.name}',
    ));
  }

  void updateDraggedPlayerOffset(Offset offset) {
    emit(state.copyWith(draggedPlayerOffset: offset));
  }

  void stopDragging() {
    emit(state.copyWith(isDragging: false, draggedPlayer: null));
  }

  void dropOnOnField(Player player) {
    if (!player.isDropped) {
      moveToOnField(player);
      emit(state.copyWith(
        draggedPlayerStatus: '${player.name} moved to On Field',
      ));
    }
  }

  void dropOnOffField(Player player) {
    if (player.isDropped) {
      moveToOffField(player);
      emit(state.copyWith(
        draggedPlayerStatus: '${player.name} moved to Off Field',
      ));
    }
  }

  void moveToOnField(Player player) {
    List<Player> updatedOffField = List.from(state.offFieldPlayers)
      ..remove(player);
    List<Player> updatedOnField = List.from(state.onFieldPlayers)
      ..add(player.copyWith(isDropped: true));

    emit(state.copyWith(
      offFieldPlayers: updatedOffField,
      onFieldPlayers: updatedOnField,
      onFieldCount: updatedOnField.length,
      offFieldCount: updatedOffField.length,
    ));
  }

  void moveToOffField(Player player) {
    List<Player> updatedOnField = List.from(state.onFieldPlayers)
      ..remove(player);
    List<Player> updatedOffField = List.from(state.offFieldPlayers)
      ..add(player.copyWith(isDropped: false));

    emit(state.copyWith(
      offFieldPlayers: updatedOffField,
      onFieldPlayers: updatedOnField,
      onFieldCount: updatedOnField.length,
      offFieldCount: updatedOffField.length,
    ));
  }
}
