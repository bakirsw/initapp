// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Slots _$SlotsFromJson(Map<String, dynamic> json) {
  return _Slots.fromJson(json);
}

/// @nodoc
mixin _$Slots {
  String? get name => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlotsCopyWith<Slots> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotsCopyWith<$Res> {
  factory $SlotsCopyWith(Slots value, $Res Function(Slots) then) =
      _$SlotsCopyWithImpl<$Res, Slots>;
  @useResult
  $Res call({String? name, int? age});
}

/// @nodoc
class _$SlotsCopyWithImpl<$Res, $Val extends Slots>
    implements $SlotsCopyWith<$Res> {
  _$SlotsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SlotsCopyWith<$Res> implements $SlotsCopyWith<$Res> {
  factory _$$_SlotsCopyWith(_$_Slots value, $Res Function(_$_Slots) then) =
      __$$_SlotsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, int? age});
}

/// @nodoc
class __$$_SlotsCopyWithImpl<$Res> extends _$SlotsCopyWithImpl<$Res, _$_Slots>
    implements _$$_SlotsCopyWith<$Res> {
  __$$_SlotsCopyWithImpl(_$_Slots _value, $Res Function(_$_Slots) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? age = freezed,
  }) {
    return _then(_$_Slots(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Slots implements _Slots {
  _$_Slots({this.name, this.age});

  factory _$_Slots.fromJson(Map<String, dynamic> json) =>
      _$$_SlotsFromJson(json);

  @override
  final String? name;
  @override
  final int? age;

  @override
  String toString() {
    return 'Slots(name: $name, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Slots &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SlotsCopyWith<_$_Slots> get copyWith =>
      __$$_SlotsCopyWithImpl<_$_Slots>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SlotsToJson(
      this,
    );
  }
}

abstract class _Slots implements Slots {
  factory _Slots({final String? name, final int? age}) = _$_Slots;

  factory _Slots.fromJson(Map<String, dynamic> json) = _$_Slots.fromJson;

  @override
  String? get name;
  @override
  int? get age;
  @override
  @JsonKey(ignore: true)
  _$$_SlotsCopyWith<_$_Slots> get copyWith =>
      throw _privateConstructorUsedError;
}