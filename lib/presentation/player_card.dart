import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:player_drag/application/player%20cubit/player_cubit.dart';
import 'package:player_drag/data/player_model.dart';
import 'package:player_drag/presentation/bottom_sheet.dart';

class PlayerCard extends StatelessWidget {
  final Player player;
  final double crossLine;

  const PlayerCard({
    super.key,
    required this.player,
    required this.crossLine,
  });

  @override
  Widget build(BuildContext context) {
    final position =
        context.read<PlayerCubit>().state.playerPosition ?? null;
    // final status = context.read<PlayerCubit>().state.draggedPlayerStatus[player.name];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            backgroundColor:
                Theme.of(context).colorScheme.onSurface.withOpacity(0.94),
            context: context,
            builder: (context) {
              return BottomSheetWidget(
                player: player,
              );
            },
          );
        },
        child: Draggable<Player>(
          data: player,
          feedback: CircleAvatar(
            radius: 28,
            backgroundColor: Theme.of(context).colorScheme.primary,
            child: Text(
              player.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          childWhenDragging: const SizedBox(),
          child: CircleAvatar(
            radius: 28,
            backgroundColor: Theme.of(context).colorScheme.primary,
            child: Text(
              '${player.name},${player.status}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          onDragStarted: () {
            context
                .read<PlayerCubit>()
                .updatePosition(position, player.name, crossLine);
          },
          // onDragEnd: (details) {
          //   final playerOnFieldTime = context
          //       .read<PlayerCubit>()
          //       .playerOnFieldTime(player.name, status, position);
          //   print("${player.name}: $playerOnFieldTime");
          // },
        ),
      ),
    );
  }
}
