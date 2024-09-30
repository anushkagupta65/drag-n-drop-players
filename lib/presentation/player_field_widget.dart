import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:player_drag/application/player%20cubit/player_cubit.dart';
import 'package:player_drag/data/player_model.dart';

class PlayerFieldWidget extends StatelessWidget {
  const PlayerFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerCubit, PlayerState>(
      builder: (context, state) {
        double screenHeight = MediaQuery.of(context).size.height;
        double centerLine = (screenHeight / 2) - 40;

        int onFieldCount =
            state.players.where((player) => player.status == "On").length;
        int offFieldCount =
            state.players.where((player) => player.status == "Off").length;

        return SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      top: centerLine - 1,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 2,
                        color: Colors.black,
                      ),
                    ),
                    Positioned.fill(
                      child: DragTarget<Offset>(
                        onWillAcceptWithDetails: (details) {
                          return true;
                        },
                        onAcceptWithDetails: (details) {
                          String draggedPlayerName = state.draggedPlayerName;
                          if (draggedPlayerName.isNotEmpty) {
                            context.read<PlayerCubit>().updatePosition(
                                  details.offset,
                                  draggedPlayerName,
                                  centerLine,
                                );
                          }
                        },
                        builder: (context, candidateData, rejectedData) {
                          return Column(
                            children: [
                              Expanded(
                                child: Container(
                                  color: Colors.blue[200],
                                  child: const Center(
                                    child: Text(
                                      'On - Field',
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 2,
                                color: Colors.black,
                              ),
                              Expanded(
                                child: Container(
                                  color: Colors.green[200],
                                  child: const Center(
                                    child: Text(
                                      'Off - Field',
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    ...state.players.asMap().entries.map((entry) {
                      Player player = entry.value;

                      return Positioned(
                        left: player.position.dx,
                        top: player.position.dy,
                        child: Draggable<Offset>(
                          data: player.position,
                          feedback: CircleAvatar(
                            radius: 24,
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            child: Text(
                              player.name,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 12),
                            ),
                          ),
                          childWhenDragging: Container(),
                          child: CircleAvatar(
                            radius: 24,
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            child: Text(
                              '${player.name}\n${player.status}',
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 12),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          onDragStarted: () {
                            context.read<PlayerCubit>().updatePosition(
                                player.position, player.name, centerLine);
                          },
                        ),
                      );
                    }).toList(),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.white,
                child: Center(
                  child: Text(
                    'On Field: $onFieldCount Players  |  Off Field: $offFieldCount Players',
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
