import 'dart:ui';

class Player {
  final String name;
  final int age;
  final String nationality;
  final Offset position;
  final String status;

  Player({
    required this.name,
    required this.nationality,
    required this.position,
    required this.status,
    required this.age,
  });

  Player copyWith({
    String? name,
    int? age,
    String? nationality,
    Offset? position,
    String? status,
  }) {
    return Player(
      name: name ?? this.name,
      age: age ?? this.age,
      nationality: nationality ?? this.nationality,
      position: position ?? this.position,
      status: status ?? this.status,
    );
  }
}
