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
  List<Player> get players => throw _privateConstructorUsedError;
  String get draggedPlayerName => throw _privateConstructorUsedError;
  Offset get draggedPlayerPosition => throw _privateConstructorUsedError;
  String get draggedPlayerStatus => throw _privateConstructorUsedError;

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
  $Res call(
      {List<Player> players,
      String draggedPlayerName,
      Offset draggedPlayerPosition,
      String draggedPlayerStatus});
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
    Object? draggedPlayerName = null,
    Object? draggedPlayerPosition = null,
    Object? draggedPlayerStatus = null,
  }) {
    return _then(_value.copyWith(
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      draggedPlayerName: null == draggedPlayerName
          ? _value.draggedPlayerName
          : draggedPlayerName // ignore: cast_nullable_to_non_nullable
              as String,
      draggedPlayerPosition: null == draggedPlayerPosition
          ? _value.draggedPlayerPosition
          : draggedPlayerPosition // ignore: cast_nullable_to_non_nullable
              as Offset,
      draggedPlayerStatus: null == draggedPlayerStatus
          ? _value.draggedPlayerStatus
          : draggedPlayerStatus // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call(
      {List<Player> players,
      String draggedPlayerName,
      Offset draggedPlayerPosition,
      String draggedPlayerStatus});
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
    Object? draggedPlayerName = null,
    Object? draggedPlayerPosition = null,
    Object? draggedPlayerStatus = null,
  }) {
    return _then(_$PlayerStateImpl(
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      draggedPlayerName: null == draggedPlayerName
          ? _value.draggedPlayerName
          : draggedPlayerName // ignore: cast_nullable_to_non_nullable
              as String,
      draggedPlayerPosition: null == draggedPlayerPosition
          ? _value.draggedPlayerPosition
          : draggedPlayerPosition // ignore: cast_nullable_to_non_nullable
              as Offset,
      draggedPlayerStatus: null == draggedPlayerStatus
          ? _value.draggedPlayerStatus
          : draggedPlayerStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlayerStateImpl implements _PlayerState {
  _$PlayerStateImpl(
      {final List<Player> players = const [],
      this.draggedPlayerName = '',
      this.draggedPlayerPosition = Offset.zero,
      this.draggedPlayerStatus = ''})
      : _players = players;

  final List<Player> _players;
  @override
  @JsonKey()
  List<Player> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  @override
  @JsonKey()
  final String draggedPlayerName;
  @override
  @JsonKey()
  final Offset draggedPlayerPosition;
  @override
  @JsonKey()
  final String draggedPlayerStatus;

  @override
  String toString() {
    return 'PlayerState(players: $players, draggedPlayerName: $draggedPlayerName, draggedPlayerPosition: $draggedPlayerPosition, draggedPlayerStatus: $draggedPlayerStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerStateImpl &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            (identical(other.draggedPlayerName, draggedPlayerName) ||
                other.draggedPlayerName == draggedPlayerName) &&
            (identical(other.draggedPlayerPosition, draggedPlayerPosition) ||
                other.draggedPlayerPosition == draggedPlayerPosition) &&
            (identical(other.draggedPlayerStatus, draggedPlayerStatus) ||
                other.draggedPlayerStatus == draggedPlayerStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_players),
      draggedPlayerName,
      draggedPlayerPosition,
      draggedPlayerStatus);

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
      final String draggedPlayerName,
      final Offset draggedPlayerPosition,
      final String draggedPlayerStatus}) = _$PlayerStateImpl;

  @override
  List<Player> get players;
  @override
  String get draggedPlayerName;
  @override
  Offset get draggedPlayerPosition;
  @override
  String get draggedPlayerStatus;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerStateImplCopyWith<_$PlayerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
