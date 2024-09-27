// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'player_cubit.dart';
// import 'player_card.dart';

// class FieldSection extends StatelessWidget {
//   final String title;
//   final bool isOnField;
//   final double centerLine;

//   const FieldSection({
//     super.key,
//     required this.isOnField,
//     required this.title,
//     required this.centerLine,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<PlayerCubit, PlayerState>(
//       builder: (context, state) {
//         final players = isOnField ? state.onFieldPlayers : state.offFieldPlayers;

//         return Stack(
//           children: [
//             // ... other widgets ...
//             ...players.map(
//               (player) {
//                 Offset position;
//                 if (state.isDragging && state.draggedPlayer == player) {
//                   position = state.draggedPlayerOffset;
//                 } else {
//                   position = Offset(
//                     player.position.dx,
//                     player.position.dy,
//                   );
//                 }

//                 return Positioned(
//                   left: position.dx,
//                   top: position.dy,
//                   child: Draggable(
//                     data: player,
//                     feedback: PlayerCard(player: player),
//                     child: PlayerCard(player: player),
//                     onDragStarted: () {
//                       context.read<PlayerCubit>().startDragging(player);
//                     },
//                     onDragUpdate: (details) {
//                       context.read<PlayerCubit>().updateDraggedPlayerOffset(
//                         details.delta + state.draggedPlayerOffset,
//                         centerLine,
//                       );
//                     },
//                     onDragEnd: (details) {
//                       if (isOnField) {
//                         context.read<PlayerCubit>().dropOnOffField(player);
//                       } else {
//                         context.read<PlayerCubit>().dropOnOnField(player);
//                       }
//                       context.read<PlayerCubit>().stopDragging();
//                     },
//                   ),
//                 );
//               },
//             ).toList(),
//           ],
//         );
//       },
//     );
//   }
// }
