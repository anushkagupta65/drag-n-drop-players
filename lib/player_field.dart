import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:player_drag/player_card.dart';
import 'player_cubit.dart';
// import 'dart:math';

class PlayerFieldScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PlayerCubit(),
      child: const Scaffold(
        body: Column(
          children: [
            Expanded(child: FieldSection(title: 'On Field', isOnField: true)),
            Expanded(child: FieldSection(title: 'Off Field', isOnField: false)),
          ],
        ),
      ),
    );
  }
}

class FieldSection extends StatelessWidget {
  final String title;
  final bool isOnField;

  const FieldSection({
    super.key,
    required this.title,
    required this.isOnField,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerCubit, PlayerState>(
      builder: (context, state) {
        final players =
            isOnField ? state.onFieldPlayers : state.offFieldPlayers;

        return LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                  color: isOnField ? Colors.green[200] : Colors.blue[200],
                  child: Center(
                    child: Text(
                      title,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                ...players.map(
                  (player) {
                    Offset position;
                    if (state.isDragging && state.draggedPlayer == player) {
                      position = state.draggedPlayerOffset;
                    } else {
                      position = Offset(
                        player.position.dx,
                        player.position.dy,
                      );
                    }

                    return Positioned(
                      left: position.dx,
                      top: position.dy,
                      child: Draggable(
                        data: player,
                        feedback: PlayerCard(player: player),
                        child: PlayerCard(player: player),
                        onDragStarted: () {
                          context.read<PlayerCubit>().startDragging(player);
                        },
                        onDragUpdate: (details) {
                          context.read<PlayerCubit>().updateDraggedPlayerOffset(
                              details.delta + state.draggedPlayerOffset);
                        },
                        onDragEnd: (details) {
                          context.read<PlayerCubit>().stopDragging();
                        },
                      ),
                    );
                  },
                ).toList(),
              ],
            );
          },
        );
      },
    );
  }
}
