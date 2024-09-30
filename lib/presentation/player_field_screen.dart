import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:player_drag/presentation/player_field_widget.dart';
import '../application/player cubit/player_cubit.dart';

class PlayerFieldScreen extends StatelessWidget {
  const PlayerFieldScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (_) => PlayerCubit(),
          child: const PlayerFieldWidget(),
        ),
      ),
    );
  }
}
