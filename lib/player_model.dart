import 'dart:ui';

class Player {
  final String name;
  final Offset position;
  final String status;

  Player({
    required this.name,
    required this.position,
    required this.status
  });

  Player copyWith({
    String? name,
    Offset? position,
    String? status,
  }) {
    return Player(

      name: name ?? this.name,
      position: position ?? this.position,
      status: status?? this.status,
    );
  }
}
