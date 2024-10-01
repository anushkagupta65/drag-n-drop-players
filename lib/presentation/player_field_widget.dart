import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:player_drag/application/player%20cubit/player_cubit.dart';
import 'package:player_drag/data/player_model.dart';
import 'package:player_drag/presentation/player_card.dart';

class PlayerFieldWidget extends StatelessWidget {
  const PlayerFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerCubit, PlayerState>(
      builder: (context, state) {
        double screenHeight = MediaQuery.of(context).size.height;
        double crossLine = screenHeight - 246;

        List<Player> onFieldPlayers =
            state.players.where((player) => player.status == "On").toList();
        List<Player> offFieldPlayers =
            state.players.where((player) => player.status == "Off").toList();

        return SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      top: crossLine - 1,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 2,
                        color: Colors.black,
                      ),
                    ),
                    Positioned.fill(
                      child: DragTarget<Player>(
                        onWillAcceptWithDetails: (details) {
                          return true;
                        },
                        onAcceptWithDetails: (details) {
                          final player = details.data;
                          final dropPosition = details.offset;

                          context.read<PlayerCubit>().updatePosition(
                              dropPosition, player.name, crossLine);
                        },
                        builder: (context, candidateData, rejectedData) {
                          return Stack(
                            children: [
                              Positioned.fill(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        color: Colors.green[200],
                                        child: Stack(
                                          children:
                                              onFieldPlayers.map((player) {
                                            return Positioned(
                                              left: player.position!.dx,
                                              top: player.position!.dy,
                                              child: PlayerCard(
                                                player: player,
                                                crossLine: crossLine,
                                              ),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Center(
                                child: Text(
                                  'On - Field',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              DragTarget<Player>(
                onWillAcceptWithDetails: (details) {
                  return true;
                },
                onAcceptWithDetails: (details) {
                  final player = details.data;
                  final dropPosition = details.offset;

                  context
                      .read<PlayerCubit>()
                      .updatePosition(dropPosition, player.name, crossLine);
                },
                builder: (context, candidateData, rejectedData) {
                  return Container(
                    color: Theme.of(context).colorScheme.surfaceBright,
                    height: 160,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: offFieldPlayers.length,
                      itemBuilder: (context, index) {
                        Player player = offFieldPlayers[index];
                        return PlayerCard(
                          player: player,
                          crossLine: crossLine,
                        );
                      },
                    ),
                  );
                },
              ),
              Container(
                padding: const EdgeInsets.all(12.0),
                color: Colors.white,
                child: Center(
                  child: Text(
                    'On Field: ${onFieldPlayers.length} Players  |  Off Field: ${offFieldPlayers.length} Players',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(0.75),
                    ),
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
