import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'player_model.dart';
import 'players.dart';
import 'dart:ui';
part 'player_state.dart';
part 'player_cubit.freezed.dart';

class PlayerCubit extends Cubit<PlayerState> {
  PlayerCubit() : super(PlayerState.initial());

  void startDragging(Player player) {
    emit(state.copyWith(isDragging: true, draggedPlayer: player));
  }

  void updateDraggedPlayerOffset(Offset offset) {
    emit(state.copyWith(draggedPlayerOffset: offset));
  }

  void stopDragging() {
    final draggedPlayer = state.draggedPlayer;
    if (draggedPlayer != null) {
      final onField = isOnField(state.draggedPlayerOffset);
      if (onField) {
        moveToOnField(draggedPlayer);
      } else {
        moveToOffField(draggedPlayer);
      }
    }
    emit(state.copyWith(isDragging: false, draggedPlayer: null));
  }

  void moveToOnField(Player player) {
    List<Player> updatedOffField = List.from(state.offFieldPlayers)
      ..remove(player);
    List<Player> updatedOnField = List.from(state.onFieldPlayers)
      ..add(player.copyWith(isDropped: true));

    emit(state.copyWith(
        offFieldPlayers: updatedOffField, onFieldPlayers: updatedOnField));
  }

  void moveToOffField(Player player) {
    List<Player> updatedOnField = List.from(state.onFieldPlayers)
      ..remove(player);
    List<Player> updatedOffField = List.from(state.offFieldPlayers)
      ..add(player.copyWith(isDropped: false));

    emit(state.copyWith(
        offFieldPlayers: updatedOffField, onFieldPlayers: updatedOnField));
  }

  bool isOnField(Offset offset) {
    // Implement your logic to check if the offset is within the on-field area
    return offset.dy < 300; // Replace with your logic
  }
}

// class PlayerCubit extends Cubit<PlayerState> {
//   PlayerCubit() : super(PlayerState.initial());

//   void startDragging(Player player) {
//     emit(state.copyWith(isDragging: true, draggedPlayer: player));
//   }

//   void updateDraggedPlayerOffset(Offset offset) {
//     emit(state.copyWith(draggedPlayerOffset: offset));
//   }

//   void stopDragging() {
//     final draggedPlayer = state.draggedPlayer;
//     if (draggedPlayer != null) {
//       final onField = isOnField(state.draggedPlayerOffset);
//       if (onField) {
//         moveToOnField(draggedPlayer);
//       } else {
//         moveToOffField(draggedPlayer);
//       }
//     }
//     emit(state.copyWith(isDragging: false, draggedPlayer: null));
//   }

//   void moveToOnField(Player player) {
//     List<Player> updatedOffField = List.from(state.offFieldPlayers)
//       ..remove(player);
//     List<Player> updatedOnField = List.from(state.onFieldPlayers)
//       ..add(player.copyWith(isDropped: true));

//     emit(state.copyWith(
//         offFieldPlayers: updatedOffField, onFieldPlayers: updatedOnField));
//   }

//   void moveToOffField(Player player) {
//     List<Player> updatedOnField = List.from(state.onFieldPlayers)
//       ..remove(player);
//     List<Player> updatedOffField = List.from(state.offFieldPlayers)
//       ..add(player.copyWith(isDropped: false));

//     emit(state.copyWith(
//         offFieldPlayers: updatedOffField, onFieldPlayers: updatedOnField));
//   }

//   bool isOnField(Offset offset) {
//     // Implement your logic to check if the offset is within the on-field area
//     return offset.dy < 300; // Replace with your logic
//   }
// }
