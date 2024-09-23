import 'dart:math';
import 'dart:ui';
import 'package:player_drag/player_model.dart';

class InitialPlayers {
  static List<Player> offFieldPlayers = [
    Player(
      name: "P1",
      age: 20,
      description: "Description 1",
      isDropped: false,
      position:
          Offset(Random().nextDouble() * 360, Random().nextDouble() * 360),
    ),
    Player(
      name: "P2",
      age: 21,
      description: "Description 2",
      isDropped: false,
      position:
          Offset(Random().nextDouble() * 360, Random().nextDouble() * 360),
    ),
    Player(
      name: "P3",
      age: 22,
      description: "Description 3",
      isDropped: false,
      position:
          Offset(Random().nextDouble() * 360, Random().nextDouble() * 360),
    ),
    Player(
      name: "P4",
      age: 23,
      description: "Description 4",
      isDropped: false,
      position:
          Offset(Random().nextDouble() * 360, Random().nextDouble() * 360),
    ),
    Player(
      name: "P5",
      age: 24,
      description: "Description 5",
      isDropped: false,
      position:
          Offset(Random().nextDouble() * 360, Random().nextDouble() * 360),
    ),
    Player(
      name: "P6",
      age: 25,
      description: "Description 6",
      isDropped: false,
      position:
          Offset(Random().nextDouble() * 360, Random().nextDouble() * 360),
    ),
    Player(
      name: "P7",
      age: 26,
      description: "Description 7",
      isDropped: false,
      position:
          Offset(Random().nextDouble() * 360, Random().nextDouble() * 360),
    ),
    Player(
      name: "P8",
      age: 27,
      description: "Description 8",
      isDropped: false,
      position:
          Offset(Random().nextDouble() * 360, Random().nextDouble() * 360),
    ),
  ];
}
