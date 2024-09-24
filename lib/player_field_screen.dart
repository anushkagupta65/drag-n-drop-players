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
      child: const Scaffold(
        body: Column(
          children: [
            Expanded(child: FieldSection(isOnField: true, title: 'On Field')),
            Expanded(child: FieldSection(isOnField: false, title: 'Off Field')),
          ],
        ),
      ),
    );
  }
}
