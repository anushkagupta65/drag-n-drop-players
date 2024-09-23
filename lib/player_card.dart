import 'package:flutter/material.dart';
import 'player_model.dart';

class PlayerCard extends StatelessWidget {
  final Player player;

  const PlayerCard({
    super.key,
    required this.player,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 16,
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: Text(
        player.name,
        style: TextStyle(fontSize: 8, color: Colors.white),
      ),
    );
  }
}
