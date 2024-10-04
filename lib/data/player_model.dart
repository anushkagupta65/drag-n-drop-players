import 'dart:ui';

class Player {
  final String id;
  final String name;
  final int age;
  final String nationality;
  final String status;
  final Offset? position;
  final int? onFieldTime;
  final DateTime? startTime;

  Player({
    required this.id,
    required this.name,
    required this.age,
    required this.nationality,
    this.status = "",
    this.position,
    this.onFieldTime,
    this.startTime,
  });

  Player copyWith({
    String? id,
    String? name,
    int? age,
    String? nationality,
    String? status,
    Offset? position,
    int? onFieldTime,
    DateTime? startTime,
  }) {
    return Player(
      id: id ?? this.id,
      name: name ?? this.name,
      age: age ?? this.age,
      nationality: nationality ?? this.nationality,
      status: status ?? this.status,
      position: position ?? this.position,
      onFieldTime: onFieldTime ?? this.onFieldTime,
      startTime: startTime ?? this.startTime,
    );
  }
}
