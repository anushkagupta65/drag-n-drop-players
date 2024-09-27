// import 'package:flutter/material.dart';

// class PlayerCard extends StatelessWidget {
//   final int index;
//   final PlayerState playerState;
//   final double centerLine;

//   const PlayerCard({
//     Key? key,
//     required this.index,
//     required this.playerState,
//     required this.centerLine,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       left: playerState.position.dx,
//       top: playerState.position.dy,
//       child: Draggable<Offset>(
//         data: playerState.position,
//         feedback: CircleAvatar(
//           radius: 24,
//           backgroundColor: Colors.purple,
//           child: Text(
//             playerState.status,
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//         childWhenDragging: Container(),
//         child: CircleAvatar(
//           radius: 24,
//           backgroundColor: Colors.purple,
//           child: Text(
//             playerState.status,
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//         onDragEnd: (details) {
//           Offset newPosition = details.offset;
//           context.read<PlayerCubit>().updatePosition(index, newPosition, centerLine);
//         },
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'player_model.dart';

// class PlayerCard extends StatelessWidget {
//   final Player player;

//   const PlayerCard({
//     super.key,
//     required this.player,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return CircleAvatar(
//       radius: 24,
//       backgroundColor: Theme.of(context).colorScheme.primary,
//       child: Text(
//         ${player.name +'\n' + player.status},
//         style: const TextStyle(fontSize: 8, color: Colors.white),
//       ),
//     );
//   }
// }
