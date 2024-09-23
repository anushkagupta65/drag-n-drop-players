// import 'package:flutter/material.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:player_drag/player_card.dart';
// // import 'player_cubit.dart';
// import 'player_model.dart';

// class DraggablePlayerCard extends StatelessWidget {
//   final Player player;
//   final bool isOnField;

//   const DraggablePlayerCard({
//     super.key,
//     required this.player,
//     required this.isOnField,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Draggable<Player>(
//       data: player,
//       feedback: Material(
//         child: PlayerCard(player: player),
//       ),
//       childWhenDragging: Opacity(
//         opacity: 0.5,
//         child: PlayerCard(player: player),
//       ),
//       child: PlayerCard(player: player),
//     );
//   }
// }
