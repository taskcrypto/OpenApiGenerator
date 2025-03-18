// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unregister_all_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UnregisterAllSuccess _$UnregisterAllSuccessFromJson(Map<String, dynamic> json) {
  return _UnregisterAllSuccess.fromJson(json);
}

/// @nodoc
mixin _$UnregisterAllSuccess {
  @JsonKey(name: 'RegistList')
  Map<String, dynamic>? get registList => throw _privateConstructorUsedError;

  /// Serializes this UnregisterAllSuccess to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnregisterAllSuccess
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnregisterAllSuccessCopyWith<UnregisterAllSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnregisterAllSuccessCopyWith<$Res> {
  factory $UnregisterAllSuccessCopyWith(UnregisterAllSuccess value,
          $Res Function(UnregisterAllSuccess) then) =
      _$UnregisterAllSuccessCopyWithImpl<$Res, UnregisterAllSuccess>;
  @useResult
  $Res call({@JsonKey(name: 'RegistList') Map<String, dynamic>? registList});
}

/// @nodoc
class _$UnregisterAllSuccessCopyWithImpl<$Res,
        $Val extends UnregisterAllSuccess>
    implements $UnregisterAllSuccessCopyWith<$Res> {
  _$UnregisterAllSuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnregisterAllSuccess
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registList = freezed,
  }) {
    return _then(_value.copyWith(
      registList: freezed == registList
          ? _value.registList
          : registList // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnregisterAllSuccessImplCopyWith<$Res>
    implements $UnregisterAllSuccessCopyWith<$Res> {
  factory _$$UnregisterAllSuccessImplCopyWith(_$UnregisterAllSuccessImpl value,
          $Res Function(_$UnregisterAllSuccessImpl) then) =
      __$$UnregisterAllSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'RegistList') Map<String, dynamic>? registList});
}

/// @nodoc
class __$$UnregisterAllSuccessImplCopyWithImpl<$Res>
    extends _$UnregisterAllSuccessCopyWithImpl<$Res, _$UnregisterAllSuccessImpl>
    implements _$$UnregisterAllSuccessImplCopyWith<$Res> {
  __$$UnregisterAllSuccessImplCopyWithImpl(_$UnregisterAllSuccessImpl _value,
      $Res Function(_$UnregisterAllSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnregisterAllSuccess
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registList = freezed,
  }) {
    return _then(_$UnregisterAllSuccessImpl(
      registList: freezed == registList
          ? _value._registList
          : registList // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnregisterAllSuccessImpl implements _UnregisterAllSuccess {
  const _$UnregisterAllSuccessImpl(
      {@JsonKey(name: 'RegistList')
      required final Map<String, dynamic>? registList})
      : _registList = registList;

  factory _$UnregisterAllSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnregisterAllSuccessImplFromJson(json);

  final Map<String, dynamic>? _registList;
  @override
  @JsonKey(name: 'RegistList')
  Map<String, dynamic>? get registList {
    final value = _registList;
    if (value == null) return null;
    if (_registList is EqualUnmodifiableMapView) return _registList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'UnregisterAllSuccess(registList: $registList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnregisterAllSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._registList, _registList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_registList));

  /// Create a copy of UnregisterAllSuccess
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnregisterAllSuccessImplCopyWith<_$UnregisterAllSuccessImpl>
      get copyWith =>
          __$$UnregisterAllSuccessImplCopyWithImpl<_$UnregisterAllSuccessImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnregisterAllSuccessImplToJson(
      this,
    );
  }
}

abstract class _UnregisterAllSuccess implements UnregisterAllSuccess {
  const factory _UnregisterAllSuccess(
          {@JsonKey(name: 'RegistList')
          required final Map<String, dynamic>? registList}) =
      _$UnregisterAllSuccessImpl;

  factory _UnregisterAllSuccess.fromJson(Map<String, dynamic> json) =
      _$UnregisterAllSuccessImpl.fromJson;

  @override
  @JsonKey(name: 'RegistList')
  Map<String, dynamic>? get registList;

  /// Create a copy of UnregisterAllSuccess
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnregisterAllSuccessImplCopyWith<_$UnregisterAllSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
