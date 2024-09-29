import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:player_drag/players.dart';
import 'player_model.dart';

part 'player_state.dart';
part 'player_cubit.freezed.dart';

class PlayerCubit extends Cubit<PlayerState> {
  PlayerCubit() : super(PlayerState.initial());

  void updatePosition(Offset newPosition, String playerName, double centerLine) {
    final String newStatus = newPosition.dy < centerLine ? "ON" : "OFF";

    emit(state.copyWith(
      draggedPlayerPosition: newPosition,
      draggedPlayerName: playerName,
      draggedPlayerStatus: newStatus,
    ));

    updatePlayerPositionAndStatus(playerName, newPosition, newStatus);
  }

  void updatePlayerPositionAndStatus(String playerName, Offset newPosition, String newStatus) {
    List<Player> updatedPlayers = state.players.map((player) {
      if (player.name == playerName) {
        return player.copyWith(position: newPosition, status: newStatus);
      }
      return player;
    }).toList();

    emit(state.copyWith(players: updatedPlayers));
  }
}
