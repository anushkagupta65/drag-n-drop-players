// player_cubit.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:player_drag/players.dart';
import 'player_model.dart';

part 'player_state.dart';
part 'player_cubit.freezed.dart';

class PlayerCubit extends Cubit<PlayerState> {
  PlayerCubit() : super(PlayerState.initial());

  // Update the dragged player position and status
  void updatePosition(Offset newPosition, String playerName, double centerLine) {
    final String newStatus = newPosition.dy < centerLine ? "ON" : "OFF";

    // Update player position and status
    emit(state.copyWith(
      draggedPlayerPosition: newPosition,
      draggedPlayerName: playerName,
      draggedPlayerStatus: newStatus,
    ));

    // Update the player's position in the list
    updatePlayerPosition(playerName, newPosition);
  }

  // Update the player's position
  void updatePlayerPosition(String playerName, Offset newPosition) {
    List<Player> updatedPlayers = [];
    
    for (var player in state.players) {
      if (player.name == playerName) {
        updatedPlayers.add(player.copyWith(position: newPosition));
      } else {
        updatedPlayers.add(player);
      }
    }

    emit(state.copyWith(players: updatedPlayers));
  }

  // Update the player's status
  void updateStatus(String playerName, String newStatus) {
    List<Player> updatedPlayers = [];
    
    for (var player in state.players) {
      if (player.name == playerName) {
        updatedPlayers.add(player.copyWith(status: newStatus));
      } else {
        updatedPlayers.add(player);
      }
    }

    emit(state.copyWith(players: updatedPlayers));
  }
}
