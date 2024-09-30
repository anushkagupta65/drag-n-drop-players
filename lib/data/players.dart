import 'dart:math';
import 'package:flutter/material.dart';
import 'package:player_drag/data/player_model.dart';

class InitialPlayers {
  static List<Player> offFieldPlayers = _initialPlayers();

  static List<Player> _initialPlayers() {
    final Random random = Random();
    double screenHeight = 640;
    double centerLine = screenHeight / 2;

    return List.generate(
      15,
      (index) {
        return Player(
          name: "P${index + 1}",
          position: Offset(
            random.nextDouble() * 300,
            random.nextDouble() * (centerLine - 120) + (centerLine + 120),
          ),
          status: "",
        );
      },
    );
  }
}
