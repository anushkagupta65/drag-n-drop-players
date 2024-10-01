import 'dart:ui';
import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:player_drag/data/players.dart';
import '../../data/player_model.dart';
part 'player_state.dart';
part 'player_cubit.freezed.dart';

class PlayerCubit extends Cubit<PlayerState> {
  Map<String, Timer?> timer = {};
  PlayerCubit() : super(PlayerState.initial());

  void updatePosition(
      Offset? newPosition, String playerName, double crossLine) {
    String newStatus;

    if (newPosition != null) {
      newStatus = newPosition.dy < crossLine ? "On" : "Off";
    } else {
      newStatus = "Off";
    }

    emit(state.copyWith(
      playerPosition: newPosition,
      playerID: playerName,
      playerStatus: newStatus,
    ));

    updatePlayerPositionAndStatus(playerName, newPosition, newStatus);
  }

  void updatePlayerPositionAndStatus(
      String playerName, Offset? newPosition, String newStatus) {
    List<Player> updatedPlayers = state.players.map((player) {
      if (player.name == playerName) {
        return player.copyWith(position: newPosition, status: newStatus);
      }
      return player;
    }).toList();

    emit(state.copyWith(players: updatedPlayers));
  
  }

  // void playerOnFieldTime(
  //     String playerName, String newStatus, Offset newPosition) {
  //   if (newStatus == "On") {
  //     startTimer(playerName,
  //         state.playerElapsedTime[playerName] ?? Duration.zero, newPosition);
  //   } else if (newStatus == "Off") {
  //     stopTimer(playerName);
  //   }
  // }

  // void startTimer(
  //     String playerName, Duration currentElapsedTime, Offset newPosition) {
  //   if (timer[playerName] != null) return;

  //   timer[playerName] = Timer.periodic(Duration(seconds: 1), (timer) {
  //     final updatedTime = state.playerElapsedTime[playerName] ?? Duration.zero;
  //     final newTime = updatedTime + Duration(seconds: 1);

  //     emit(state.copyWith(
  //       playerElapsedTime: {
  //         ...state.playerElapsedTime,
  //         playerName: newTime,
  //       },
  //     ));
  //   });
  // }

  // void stopTimer(String playerName) {
  //   timer[playerName]?.cancel();
  //   timer.remove(playerName);
  // }
}
