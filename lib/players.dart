import 'dart:math';
import 'dart:ui';
import 'package:player_drag/player_model.dart';

class InitialPlayers {
  static String initialStatus = "Off"; // Set initial status to OFF
  static List<Player> offFieldPlayers = _generateInitialPlayers();

  static List<Player> _generateInitialPlayers() {
    final Random random = Random();
    const double screenHeight =
        600; // Adjust this to your app's screen height as needed
    const double centerLineY = screenHeight / 2; // Center line position

    return List.generate(8, (index) {
      return Player(
        name: "P${index + 1}",
        position: Offset(
          random.nextDouble() * 300, // Random x position within width
          random.nextDouble() * (centerLineY - 60) +
              (centerLineY + 60), // Random y position below center line
        ),
        status: initialStatus,
      );
    });
  }
}
