// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get requireNote => throw _privateConstructorUsedError;
  String? get studySchedule => throw _privateConstructorUsedError;
  String? get creditCardNumber => throw _privateConstructorUsedError;
  DateTime? get birthday => throw _privateConstructorUsedError;
  int? get timezone => throw _privateConstructorUsedError;
  double? get avgRating => throw _privateConstructorUsedError;
  List<String>? get roles => throw _privateConstructorUsedError;
  bool get isActivated => throw _privateConstructorUsedError;
  bool get isPhoneActivated => throw _privateConstructorUsedError;
  bool get canSendMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? email,
      String? phone,
      String? avatar,
      String? level,
      String? country,
      String? language,
      String? requireNote,
      String? studySchedule,
      String? creditCardNumber,
      DateTime? birthday,
      int? timezone,
      double? avgRating,
      List<String>? roles,
      bool isActivated,
      bool isPhoneActivated,
      bool canSendMessage});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = freezed,
    Object? phone = freezed,
    Object? avatar = freezed,
    Object? level = freezed,
    Object? country = freezed,
    Object? language = freezed,
    Object? requireNote = freezed,
    Object? studySchedule = freezed,
    Object? creditCardNumber = freezed,
    Object? birthday = freezed,
    Object? timezone = freezed,
    Object? avgRating = freezed,
    Object? roles = freezed,
    Object? isActivated = null,
    Object? isPhoneActivated = null,
    Object? canSendMessage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      requireNote: freezed == requireNote
          ? _value.requireNote
          : requireNote // ignore: cast_nullable_to_non_nullable
              as String?,
      studySchedule: freezed == studySchedule
          ? _value.studySchedule
          : studySchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      creditCardNumber: freezed == creditCardNumber
          ? _value.creditCardNumber
          : creditCardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double?,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isActivated: null == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      isPhoneActivated: null == isPhoneActivated
          ? _value.isPhoneActivated
          : isPhoneActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      canSendMessage: null == canSendMessage
          ? _value.canSendMessage
          : canSendMessage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? email,
      String? phone,
      String? avatar,
      String? level,
      String? country,
      String? language,
      String? requireNote,
      String? studySchedule,
      String? creditCardNumber,
      DateTime? birthday,
      int? timezone,
      double? avgRating,
      List<String>? roles,
      bool isActivated,
      bool isPhoneActivated,
      bool canSendMessage});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = freezed,
    Object? phone = freezed,
    Object? avatar = freezed,
    Object? level = freezed,
    Object? country = freezed,
    Object? language = freezed,
    Object? requireNote = freezed,
    Object? studySchedule = freezed,
    Object? creditCardNumber = freezed,
    Object? birthday = freezed,
    Object? timezone = freezed,
    Object? avgRating = freezed,
    Object? roles = freezed,
    Object? isActivated = null,
    Object? isPhoneActivated = null,
    Object? canSendMessage = null,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      requireNote: freezed == requireNote
          ? _value.requireNote
          : requireNote // ignore: cast_nullable_to_non_nullable
              as String?,
      studySchedule: freezed == studySchedule
          ? _value.studySchedule
          : studySchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      creditCardNumber: freezed == creditCardNumber
          ? _value.creditCardNumber
          : creditCardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double?,
      roles: freezed == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isActivated: null == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      isPhoneActivated: null == isPhoneActivated
          ? _value.isPhoneActivated
          : isPhoneActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      canSendMessage: null == canSendMessage
          ? _value.canSendMessage
          : canSendMessage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_User implements _User {
  const _$_User(
      {required this.id,
      required this.name,
      this.email,
      this.phone,
      this.avatar,
      this.level,
      this.country,
      this.language,
      this.requireNote,
      this.studySchedule,
      this.creditCardNumber,
      this.birthday,
      this.timezone,
      this.avgRating,
      final List<String>? roles,
      this.isActivated = true,
      this.isPhoneActivated = true,
      this.canSendMessage = false})
      : _roles = roles;

  @override
  final String id;
  @override
  final String name;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? avatar;
  @override
  final String? level;
  @override
  final String? country;
  @override
  final String? language;
  @override
  final String? requireNote;
  @override
  final String? studySchedule;
  @override
  final String? creditCardNumber;
  @override
  final DateTime? birthday;
  @override
  final int? timezone;
  @override
  final double? avgRating;
  final List<String>? _roles;
  @override
  List<String>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isActivated;
  @override
  @JsonKey()
  final bool isPhoneActivated;
  @override
  @JsonKey()
  final bool canSendMessage;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, phone: $phone, avatar: $avatar, level: $level, country: $country, language: $language, requireNote: $requireNote, studySchedule: $studySchedule, creditCardNumber: $creditCardNumber, birthday: $birthday, timezone: $timezone, avgRating: $avgRating, roles: $roles, isActivated: $isActivated, isPhoneActivated: $isPhoneActivated, canSendMessage: $canSendMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.requireNote, requireNote) ||
                other.requireNote == requireNote) &&
            (identical(other.studySchedule, studySchedule) ||
                other.studySchedule == studySchedule) &&
            (identical(other.creditCardNumber, creditCardNumber) ||
                other.creditCardNumber == creditCardNumber) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.avgRating, avgRating) ||
                other.avgRating == avgRating) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.isActivated, isActivated) ||
                other.isActivated == isActivated) &&
            (identical(other.isPhoneActivated, isPhoneActivated) ||
                other.isPhoneActivated == isPhoneActivated) &&
            (identical(other.canSendMessage, canSendMessage) ||
                other.canSendMessage == canSendMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      phone,
      avatar,
      level,
      country,
      language,
      requireNote,
      studySchedule,
      creditCardNumber,
      birthday,
      timezone,
      avgRating,
      const DeepCollectionEquality().hash(_roles),
      isActivated,
      isPhoneActivated,
      canSendMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {required final String id,
      required final String name,
      final String? email,
      final String? phone,
      final String? avatar,
      final String? level,
      final String? country,
      final String? language,
      final String? requireNote,
      final String? studySchedule,
      final String? creditCardNumber,
      final DateTime? birthday,
      final int? timezone,
      final double? avgRating,
      final List<String>? roles,
      final bool isActivated,
      final bool isPhoneActivated,
      final bool canSendMessage}) = _$_User;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get avatar;
  @override
  String? get level;
  @override
  String? get country;
  @override
  String? get language;
  @override
  String? get requireNote;
  @override
  String? get studySchedule;
  @override
  String? get creditCardNumber;
  @override
  DateTime? get birthday;
  @override
  int? get timezone;
  @override
  double? get avgRating;
  @override
  List<String>? get roles;
  @override
  bool get isActivated;
  @override
  bool get isPhoneActivated;
  @override
  bool get canSendMessage;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
