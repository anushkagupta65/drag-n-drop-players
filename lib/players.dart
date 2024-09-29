import 'dart:math';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:player_drag/player_model.dart';

class InitialPlayers {
  static List<Player> offFieldPlayers = _generateInitialPlayers();

  static List<Player> _generateInitialPlayers() {
    final Random random = Random();
    const double screenHeight = 600;
    const double centerLineY = screenHeight / 2;

    return List.generate(8, (index) {
      return Player(
        name: "P${index + 1}",
        position: Offset(
          random.nextDouble() * 300,
          random.nextDouble() * (centerLineY - 60) + (centerLineY + 60),
        ),
        status: "",
      );
    });
  }
}
