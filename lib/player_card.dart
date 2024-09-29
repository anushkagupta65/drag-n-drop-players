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


