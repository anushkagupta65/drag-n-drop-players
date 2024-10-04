// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlayerState {
  List<Player> get players =>
      throw _privateConstructorUsedError; // @Default('') String playerID,
// @Default('') String playerStatus,
// @Default(null) Offset? playerPosition,
  Duration? get playerOnFieldTime => throw _privateConstructorUsedError;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerStateCopyWith<PlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerStateCopyWith<$Res> {
  factory $PlayerStateCopyWith(
          PlayerState value, $Res Function(PlayerState) then) =
      _$PlayerStateCopyWithImpl<$Res, PlayerState>;
  @useResult
  $Res call({List<Player> players, Duration? playerOnFieldTime});
}

/// @nodoc
class _$PlayerStateCopyWithImpl<$Res, $Val extends PlayerState>
    implements $PlayerStateCopyWith<$Res> {
  _$PlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? playerOnFieldTime = freezed,
  }) {
    return _then(_value.copyWith(
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      playerOnFieldTime: freezed == playerOnFieldTime
          ? _value.playerOnFieldTime
          : playerOnFieldTime // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerStateImplCopyWith<$Res>
    implements $PlayerStateCopyWith<$Res> {
  factory _$$PlayerStateImplCopyWith(
          _$PlayerStateImpl value, $Res Function(_$PlayerStateImpl) then) =
      __$$PlayerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Player> players, Duration? playerOnFieldTime});
}

/// @nodoc
class __$$PlayerStateImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerStateImpl>
    implements _$$PlayerStateImplCopyWith<$Res> {
  __$$PlayerStateImplCopyWithImpl(
      _$PlayerStateImpl _value, $Res Function(_$PlayerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? playerOnFieldTime = freezed,
  }) {
    return _then(_$PlayerStateImpl(
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      playerOnFieldTime: freezed == playerOnFieldTime
          ? _value.playerOnFieldTime
          : playerOnFieldTime // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ));
  }
}

/// @nodoc

class _$PlayerStateImpl implements _PlayerState {
  _$PlayerStateImpl(
      {final List<Player> players = const [], this.playerOnFieldTime = null})
      : _players = players;

  final List<Player> _players;
  @override
  @JsonKey()
  List<Player> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

// @Default('') String playerID,
// @Default('') String playerStatus,
// @Default(null) Offset? playerPosition,
  @override
  @JsonKey()
  final Duration? playerOnFieldTime;

  @override
  String toString() {
    return 'PlayerState(players: $players, playerOnFieldTime: $playerOnFieldTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerStateImpl &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            (identical(other.playerOnFieldTime, playerOnFieldTime) ||
                other.playerOnFieldTime == playerOnFieldTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_players), playerOnFieldTime);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerStateImplCopyWith<_$PlayerStateImpl> get copyWith =>
      __$$PlayerStateImplCopyWithImpl<_$PlayerStateImpl>(this, _$identity);
}

abstract class _PlayerState implements PlayerState {
  factory _PlayerState(
      {final List<Player> players,
      final Duration? playerOnFieldTime}) = _$PlayerStateImpl;

  @override
  List<Player> get players; // @Default('') String playerID,
// @Default('') String playerStatus,
// @Default(null) Offset? playerPosition,
  @override
  Duration? get playerOnFieldTime;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerStateImplCopyWith<_$PlayerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
