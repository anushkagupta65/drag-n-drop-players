import 'package:flutter/material.dart';
import 'package:player_drag/data/player_model.dart';

class InitialPlayers {

  static List<Player> initialPlayers() {
    return List.generate(
      15,
      (index) {
        return Player(
          name: "P${index + 1}",
          status: "",
          position: Offset.zero,
          age: 21,
          nationality: "Indian",
        );
      },
    );
  }
}
