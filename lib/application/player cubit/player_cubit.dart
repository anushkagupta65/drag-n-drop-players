import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:player_drag/data/players.dart';
import '../../data/player_model.dart';
part 'player_state.dart';
part 'player_cubit.freezed.dart';

class PlayerCubit extends Cubit<PlayerState> {
  PlayerCubit() : super(PlayerState.initial());

  void updatePosition(String playerID, Offset? newPosition, double crossLine) {
    String newStatus;

    if (newPosition != null) {
      newStatus = newPosition.dy < crossLine ? "On" : "Off";
    } else {
      newStatus = "Off";
    }

    updatePlayerPositionAndStatus(playerID, newPosition, newStatus);
  }

  int calculateElapsedTime(Player player) {
    final now = DateTime.now();
    final startTime = player.startTime;
    if (startTime != null) {
      final elapsed =
          now.difference(startTime).inSeconds + (player.onFieldTime ?? 0);
      return elapsed;
    } else {
      final elapsed = state.playerOnFieldTime?.inSeconds;
      return elapsed ?? 0;
    }
  }

  void updatePlayerPositionAndStatus(
      String playerID, Offset? newPosition, String newStatus) {
    List<Player> updatedPlayers = state.players.map((player) {
      if (player.id == playerID) {
        if (player.status != newStatus) {
          if (newStatus == "On") {
            return player.copyWith(
              id: playerID,
              position: newPosition,
              status: "On",
              startTime: DateTime.now(),
            );
          } else {
            //Calculate duration
            final duration = calculateElapsedTime(player);
            return player.copyWith(
                id: playerID,
                position: newPosition,
                status: "Off",
                startTime: null,
                onFieldTime: duration);
          }
        } else {
          return player.copyWith(
            position: newPosition,
          );
        }
      } else {
        return player;
      }
    }).toList();

    emit(state.copyWith(
      players: updatedPlayers,
    ));
  }
}
