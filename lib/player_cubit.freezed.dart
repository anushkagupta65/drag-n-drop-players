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
  List<Player> get offFieldPlayers => throw _privateConstructorUsedError;
  List<Player> get onFieldPlayers => throw _privateConstructorUsedError;
  bool get isDragging => throw _privateConstructorUsedError;
  Player? get draggedPlayer => throw _privateConstructorUsedError;
  Offset get draggedPlayerOffset => throw _privateConstructorUsedError;
  int get onFieldCount => throw _privateConstructorUsedError;
  int get offFieldCount => throw _privateConstructorUsedError;
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
      {List<Player> offFieldPlayers,
      List<Player> onFieldPlayers,
      bool isDragging,
      Player? draggedPlayer,
      Offset draggedPlayerOffset,
      int onFieldCount,
      int offFieldCount,
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
    Object? offFieldPlayers = null,
    Object? onFieldPlayers = null,
    Object? isDragging = null,
    Object? draggedPlayer = freezed,
    Object? draggedPlayerOffset = null,
    Object? onFieldCount = null,
    Object? offFieldCount = null,
    Object? draggedPlayerStatus = null,
  }) {
    return _then(_value.copyWith(
      offFieldPlayers: null == offFieldPlayers
          ? _value.offFieldPlayers
          : offFieldPlayers // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      onFieldPlayers: null == onFieldPlayers
          ? _value.onFieldPlayers
          : onFieldPlayers // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      isDragging: null == isDragging
          ? _value.isDragging
          : isDragging // ignore: cast_nullable_to_non_nullable
              as bool,
      draggedPlayer: freezed == draggedPlayer
          ? _value.draggedPlayer
          : draggedPlayer // ignore: cast_nullable_to_non_nullable
              as Player?,
      draggedPlayerOffset: null == draggedPlayerOffset
          ? _value.draggedPlayerOffset
          : draggedPlayerOffset // ignore: cast_nullable_to_non_nullable
              as Offset,
      onFieldCount: null == onFieldCount
          ? _value.onFieldCount
          : onFieldCount // ignore: cast_nullable_to_non_nullable
              as int,
      offFieldCount: null == offFieldCount
          ? _value.offFieldCount
          : offFieldCount // ignore: cast_nullable_to_non_nullable
              as int,
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
      {List<Player> offFieldPlayers,
      List<Player> onFieldPlayers,
      bool isDragging,
      Player? draggedPlayer,
      Offset draggedPlayerOffset,
      int onFieldCount,
      int offFieldCount,
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
    Object? offFieldPlayers = null,
    Object? onFieldPlayers = null,
    Object? isDragging = null,
    Object? draggedPlayer = freezed,
    Object? draggedPlayerOffset = null,
    Object? onFieldCount = null,
    Object? offFieldCount = null,
    Object? draggedPlayerStatus = null,
  }) {
    return _then(_$PlayerStateImpl(
      offFieldPlayers: null == offFieldPlayers
          ? _value._offFieldPlayers
          : offFieldPlayers // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      onFieldPlayers: null == onFieldPlayers
          ? _value._onFieldPlayers
          : onFieldPlayers // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      isDragging: null == isDragging
          ? _value.isDragging
          : isDragging // ignore: cast_nullable_to_non_nullable
              as bool,
      draggedPlayer: freezed == draggedPlayer
          ? _value.draggedPlayer
          : draggedPlayer // ignore: cast_nullable_to_non_nullable
              as Player?,
      draggedPlayerOffset: null == draggedPlayerOffset
          ? _value.draggedPlayerOffset
          : draggedPlayerOffset // ignore: cast_nullable_to_non_nullable
              as Offset,
      onFieldCount: null == onFieldCount
          ? _value.onFieldCount
          : onFieldCount // ignore: cast_nullable_to_non_nullable
              as int,
      offFieldCount: null == offFieldCount
          ? _value.offFieldCount
          : offFieldCount // ignore: cast_nullable_to_non_nullable
              as int,
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
      {final List<Player> offFieldPlayers = const [],
      final List<Player> onFieldPlayers = const [],
      this.isDragging = false,
      this.draggedPlayer = null,
      this.draggedPlayerOffset = Offset.zero,
      this.onFieldCount = 0,
      this.offFieldCount = 0,
      this.draggedPlayerStatus = ''})
      : _offFieldPlayers = offFieldPlayers,
        _onFieldPlayers = onFieldPlayers;

  final List<Player> _offFieldPlayers;
  @override
  @JsonKey()
  List<Player> get offFieldPlayers {
    if (_offFieldPlayers is EqualUnmodifiableListView) return _offFieldPlayers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offFieldPlayers);
  }

  final List<Player> _onFieldPlayers;
  @override
  @JsonKey()
  List<Player> get onFieldPlayers {
    if (_onFieldPlayers is EqualUnmodifiableListView) return _onFieldPlayers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_onFieldPlayers);
  }

  @override
  @JsonKey()
  final bool isDragging;
  @override
  @JsonKey()
  final Player? draggedPlayer;
  @override
  @JsonKey()
  final Offset draggedPlayerOffset;
  @override
  @JsonKey()
  final int onFieldCount;
  @override
  @JsonKey()
  final int offFieldCount;
  @override
  @JsonKey()
  final String draggedPlayerStatus;

  @override
  String toString() {
    return 'PlayerState(offFieldPlayers: $offFieldPlayers, onFieldPlayers: $onFieldPlayers, isDragging: $isDragging, draggedPlayer: $draggedPlayer, draggedPlayerOffset: $draggedPlayerOffset, onFieldCount: $onFieldCount, offFieldCount: $offFieldCount, draggedPlayerStatus: $draggedPlayerStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerStateImpl &&
            const DeepCollectionEquality()
                .equals(other._offFieldPlayers, _offFieldPlayers) &&
            const DeepCollectionEquality()
                .equals(other._onFieldPlayers, _onFieldPlayers) &&
            (identical(other.isDragging, isDragging) ||
                other.isDragging == isDragging) &&
            (identical(other.draggedPlayer, draggedPlayer) ||
                other.draggedPlayer == draggedPlayer) &&
            (identical(other.draggedPlayerOffset, draggedPlayerOffset) ||
                other.draggedPlayerOffset == draggedPlayerOffset) &&
            (identical(other.onFieldCount, onFieldCount) ||
                other.onFieldCount == onFieldCount) &&
            (identical(other.offFieldCount, offFieldCount) ||
                other.offFieldCount == offFieldCount) &&
            (identical(other.draggedPlayerStatus, draggedPlayerStatus) ||
                other.draggedPlayerStatus == draggedPlayerStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_offFieldPlayers),
      const DeepCollectionEquality().hash(_onFieldPlayers),
      isDragging,
      draggedPlayer,
      draggedPlayerOffset,
      onFieldCount,
      offFieldCount,
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
      {final List<Player> offFieldPlayers,
      final List<Player> onFieldPlayers,
      final bool isDragging,
      final Player? draggedPlayer,
      final Offset draggedPlayerOffset,
      final int onFieldCount,
      final int offFieldCount,
      final String draggedPlayerStatus}) = _$PlayerStateImpl;

  @override
  List<Player> get offFieldPlayers;
  @override
  List<Player> get onFieldPlayers;
  @override
  bool get isDragging;
  @override
  Player? get draggedPlayer;
  @override
  Offset get draggedPlayerOffset;
  @override
  int get onFieldCount;
  @override
  int get offFieldCount;
  @override
  String get draggedPlayerStatus;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerStateImplCopyWith<_$PlayerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
