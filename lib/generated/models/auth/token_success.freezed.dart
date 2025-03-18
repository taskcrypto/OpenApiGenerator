// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenSuccess _$TokenSuccessFromJson(Map<String, dynamic> json) {
  return _TokenSuccess.fromJson(json);
}

/// @nodoc
mixin _$TokenSuccess {
  @JsonKey(name: 'ResultCode')
  int? get resultCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'Token')
  String? get token => throw _privateConstructorUsedError;

  /// Serializes this TokenSuccess to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenSuccess
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenSuccessCopyWith<TokenSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenSuccessCopyWith<$Res> {
  factory $TokenSuccessCopyWith(
          TokenSuccess value, $Res Function(TokenSuccess) then) =
      _$TokenSuccessCopyWithImpl<$Res, TokenSuccess>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ResultCode') int? resultCode,
      @JsonKey(name: 'Token') String? token});
}

/// @nodoc
class _$TokenSuccessCopyWithImpl<$Res, $Val extends TokenSuccess>
    implements $TokenSuccessCopyWith<$Res> {
  _$TokenSuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenSuccess
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultCode = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      resultCode: freezed == resultCode
          ? _value.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as int?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenSuccessImplCopyWith<$Res>
    implements $TokenSuccessCopyWith<$Res> {
  factory _$$TokenSuccessImplCopyWith(
          _$TokenSuccessImpl value, $Res Function(_$TokenSuccessImpl) then) =
      __$$TokenSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ResultCode') int? resultCode,
      @JsonKey(name: 'Token') String? token});
}

/// @nodoc
class __$$TokenSuccessImplCopyWithImpl<$Res>
    extends _$TokenSuccessCopyWithImpl<$Res, _$TokenSuccessImpl>
    implements _$$TokenSuccessImplCopyWith<$Res> {
  __$$TokenSuccessImplCopyWithImpl(
      _$TokenSuccessImpl _value, $Res Function(_$TokenSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenSuccess
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultCode = freezed,
    Object? token = freezed,
  }) {
    return _then(_$TokenSuccessImpl(
      resultCode: freezed == resultCode
          ? _value.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as int?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenSuccessImpl implements _TokenSuccess {
  const _$TokenSuccessImpl(
      {@JsonKey(name: 'ResultCode') required this.resultCode,
      @JsonKey(name: 'Token') required this.token});

  factory _$TokenSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenSuccessImplFromJson(json);

  @override
  @JsonKey(name: 'ResultCode')
  final int? resultCode;
  @override
  @JsonKey(name: 'Token')
  final String? token;

  @override
  String toString() {
    return 'TokenSuccess(resultCode: $resultCode, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenSuccessImpl &&
            (identical(other.resultCode, resultCode) ||
                other.resultCode == resultCode) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, resultCode, token);

  /// Create a copy of TokenSuccess
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenSuccessImplCopyWith<_$TokenSuccessImpl> get copyWith =>
      __$$TokenSuccessImplCopyWithImpl<_$TokenSuccessImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenSuccessImplToJson(
      this,
    );
  }
}

abstract class _TokenSuccess implements TokenSuccess {
  const factory _TokenSuccess(
          {@JsonKey(name: 'ResultCode') required final int? resultCode,
          @JsonKey(name: 'Token') required final String? token}) =
      _$TokenSuccessImpl;

  factory _TokenSuccess.fromJson(Map<String, dynamic> json) =
      _$TokenSuccessImpl.fromJson;

  @override
  @JsonKey(name: 'ResultCode')
  int? get resultCode;
  @override
  @JsonKey(name: 'Token')
  String? get token;

  /// Create a copy of TokenSuccess
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenSuccessImplCopyWith<_$TokenSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
