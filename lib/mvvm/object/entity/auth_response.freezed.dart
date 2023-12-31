// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticateResponse _$AuthenticateResponseFromJson(Map<String, dynamic> json) {
  return _AuthenticateResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthenticateResponse {
  String get jwt => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticateResponseCopyWith<AuthenticateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticateResponseCopyWith<$Res> {
  factory $AuthenticateResponseCopyWith(AuthenticateResponse value,
          $Res Function(AuthenticateResponse) then) =
      _$AuthenticateResponseCopyWithImpl<$Res, AuthenticateResponse>;
  @useResult
  $Res call({String jwt, String refreshToken, UserModel? user});
}

/// @nodoc
class _$AuthenticateResponseCopyWithImpl<$Res,
        $Val extends AuthenticateResponse>
    implements $AuthenticateResponseCopyWith<$Res> {
  _$AuthenticateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? refreshToken = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthenticateResponseCopyWith<$Res>
    implements $AuthenticateResponseCopyWith<$Res> {
  factory _$$_AuthenticateResponseCopyWith(_$_AuthenticateResponse value,
          $Res Function(_$_AuthenticateResponse) then) =
      __$$_AuthenticateResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String jwt, String refreshToken, UserModel? user});
}

/// @nodoc
class __$$_AuthenticateResponseCopyWithImpl<$Res>
    extends _$AuthenticateResponseCopyWithImpl<$Res, _$_AuthenticateResponse>
    implements _$$_AuthenticateResponseCopyWith<$Res> {
  __$$_AuthenticateResponseCopyWithImpl(_$_AuthenticateResponse _value,
      $Res Function(_$_AuthenticateResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? refreshToken = null,
    Object? user = freezed,
  }) {
    return _then(_$_AuthenticateResponse(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthenticateResponse implements _AuthenticateResponse {
  const _$_AuthenticateResponse(
      {this.jwt = "", this.refreshToken = "", this.user});

  factory _$_AuthenticateResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AuthenticateResponseFromJson(json);

  @override
  @JsonKey()
  final String jwt;
  @override
  @JsonKey()
  final String refreshToken;
  @override
  final UserModel? user;

  @override
  String toString() {
    return 'AuthenticateResponse(jwt: $jwt, refreshToken: $refreshToken, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticateResponse &&
            (identical(other.jwt, jwt) || other.jwt == jwt) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jwt, refreshToken, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticateResponseCopyWith<_$_AuthenticateResponse> get copyWith =>
      __$$_AuthenticateResponseCopyWithImpl<_$_AuthenticateResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticateResponseToJson(
      this,
    );
  }
}

abstract class _AuthenticateResponse implements AuthenticateResponse {
  const factory _AuthenticateResponse(
      {final String jwt,
      final String refreshToken,
      final UserModel? user}) = _$_AuthenticateResponse;

  factory _AuthenticateResponse.fromJson(Map<String, dynamic> json) =
      _$_AuthenticateResponse.fromJson;

  @override
  String get jwt;
  @override
  String get refreshToken;
  @override
  UserModel? get user;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticateResponseCopyWith<_$_AuthenticateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
