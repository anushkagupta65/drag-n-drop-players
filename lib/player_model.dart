import 'dart:ui';

class Player {
  final String name;
  final int age;
  final String description;
  final bool isDropped;
  final Offset position;

  Player({
    required this.name,
    required this.age,
    required this.description,
    required this.isDropped,
    required this.position,
  });

  Player copyWith({
    String? name,
    int? age,
    String? description,
    bool? isDropped,
    Offset? position,
  }) {
    return Player(
      name: name ?? this.name,
      age: age ?? this.age,
      description: description ?? this.description,
      isDropped: isDropped ?? this.isDropped,
      position: position ?? this.position,
    );
  }
}
