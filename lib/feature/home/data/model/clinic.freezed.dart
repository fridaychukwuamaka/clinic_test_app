// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'clinic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Clinic _$ClinicFromJson(Map<String, dynamic> json) {
  return _Clinic.fromJson(json);
}

/// @nodoc
mixin _$Clinic {
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  AppTag get tag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClinicCopyWith<Clinic> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicCopyWith<$Res> {
  factory $ClinicCopyWith(Clinic value, $Res Function(Clinic) then) =
      _$ClinicCopyWithImpl<$Res>;
  $Res call({String image, String name, String address, AppTag tag});
}

/// @nodoc
class _$ClinicCopyWithImpl<$Res> implements $ClinicCopyWith<$Res> {
  _$ClinicCopyWithImpl(this._value, this._then);

  final Clinic _value;
  // ignore: unused_field
  final $Res Function(Clinic) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? tag = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as AppTag,
    ));
  }
}

/// @nodoc
abstract class _$$_ClinicCopyWith<$Res> implements $ClinicCopyWith<$Res> {
  factory _$$_ClinicCopyWith(_$_Clinic value, $Res Function(_$_Clinic) then) =
      __$$_ClinicCopyWithImpl<$Res>;
  @override
  $Res call({String image, String name, String address, AppTag tag});
}

/// @nodoc
class __$$_ClinicCopyWithImpl<$Res> extends _$ClinicCopyWithImpl<$Res>
    implements _$$_ClinicCopyWith<$Res> {
  __$$_ClinicCopyWithImpl(_$_Clinic _value, $Res Function(_$_Clinic) _then)
      : super(_value, (v) => _then(v as _$_Clinic));

  @override
  _$_Clinic get _value => super._value as _$_Clinic;

  @override
  $Res call({
    Object? image = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? tag = freezed,
  }) {
    return _then(_$_Clinic(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as AppTag,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Clinic implements _Clinic {
  const _$_Clinic(
      {required this.image,
      required this.name,
      required this.address,
      required this.tag});

  factory _$_Clinic.fromJson(Map<String, dynamic> json) =>
      _$$_ClinicFromJson(json);

  @override
  final String image;
  @override
  final String name;
  @override
  final String address;
  @override
  final AppTag tag;

  @override
  String toString() {
    return 'Clinic(image: $image, name: $name, address: $address, tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Clinic &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.tag, tag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(tag));

  @JsonKey(ignore: true)
  @override
  _$$_ClinicCopyWith<_$_Clinic> get copyWith =>
      __$$_ClinicCopyWithImpl<_$_Clinic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClinicToJson(
      this,
    );
  }
}

abstract class _Clinic implements Clinic {
  const factory _Clinic(
      {required final String image,
      required final String name,
      required final String address,
      required final AppTag tag}) = _$_Clinic;

  factory _Clinic.fromJson(Map<String, dynamic> json) = _$_Clinic.fromJson;

  @override
  String get image;
  @override
  String get name;
  @override
  String get address;
  @override
  AppTag get tag;
  @override
  @JsonKey(ignore: true)
  _$$_ClinicCopyWith<_$_Clinic> get copyWith =>
      throw _privateConstructorUsedError;
}
