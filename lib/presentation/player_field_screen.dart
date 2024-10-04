import 'package:flutter/material.dart';
import 'package:player_drag/presentation/player_field_widget.dart';

class PlayerFieldScreen extends StatelessWidget {
  const PlayerFieldScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: PlayerFieldWidget(),
      ),
    );
  }
}
