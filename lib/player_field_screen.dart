import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'player_cubit.dart';
import 'field_section.dart';

class PlayerFieldScreen extends StatelessWidget {
  const PlayerFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PlayerCubit(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              BlocBuilder<PlayerCubit, PlayerState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'On-Field: ${state.onFieldCount}, Off-Field: ${state.offFieldCount}',
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Status: ${state.draggedPlayerStatus}',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  );
                },
              ),
              const Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: FieldSection(isOnField: true, title: 'On Field'),
                    ),
                    Expanded(
                      child: FieldSection(isOnField: false, title: 'Off Field'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
