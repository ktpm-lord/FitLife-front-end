// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardingModel {
  String? get fullname => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  bool get isMale => throw _privateConstructorUsedError;
  DateTime? get birthday => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  double get weightTarget => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardingModelCopyWith<OnboardingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingModelCopyWith<$Res> {
  factory $OnboardingModelCopyWith(
          OnboardingModel value, $Res Function(OnboardingModel) then) =
      _$OnboardingModelCopyWithImpl<$Res, OnboardingModel>;
  @useResult
  $Res call(
      {String? fullname,
      String? phoneNumber,
      bool isMale,
      DateTime? birthday,
      double height,
      double weight,
      int duration,
      double weightTarget});
}

/// @nodoc
class _$OnboardingModelCopyWithImpl<$Res, $Val extends OnboardingModel>
    implements $OnboardingModelCopyWith<$Res> {
  _$OnboardingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullname = freezed,
    Object? phoneNumber = freezed,
    Object? isMale = null,
    Object? birthday = freezed,
    Object? height = null,
    Object? weight = null,
    Object? duration = null,
    Object? weightTarget = null,
  }) {
    return _then(_value.copyWith(
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isMale: null == isMale
          ? _value.isMale
          : isMale // ignore: cast_nullable_to_non_nullable
              as bool,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      weightTarget: null == weightTarget
          ? _value.weightTarget
          : weightTarget // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OnboardingModelCopyWith<$Res>
    implements $OnboardingModelCopyWith<$Res> {
  factory _$$_OnboardingModelCopyWith(
          _$_OnboardingModel value, $Res Function(_$_OnboardingModel) then) =
      __$$_OnboardingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fullname,
      String? phoneNumber,
      bool isMale,
      DateTime? birthday,
      double height,
      double weight,
      int duration,
      double weightTarget});
}

/// @nodoc
class __$$_OnboardingModelCopyWithImpl<$Res>
    extends _$OnboardingModelCopyWithImpl<$Res, _$_OnboardingModel>
    implements _$$_OnboardingModelCopyWith<$Res> {
  __$$_OnboardingModelCopyWithImpl(
      _$_OnboardingModel _value, $Res Function(_$_OnboardingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullname = freezed,
    Object? phoneNumber = freezed,
    Object? isMale = null,
    Object? birthday = freezed,
    Object? height = null,
    Object? weight = null,
    Object? duration = null,
    Object? weightTarget = null,
  }) {
    return _then(_$_OnboardingModel(
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isMale: null == isMale
          ? _value.isMale
          : isMale // ignore: cast_nullable_to_non_nullable
              as bool,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      weightTarget: null == weightTarget
          ? _value.weightTarget
          : weightTarget // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_OnboardingModel implements _OnboardingModel {
  const _$_OnboardingModel(
      {this.fullname,
      this.phoneNumber,
      this.isMale = true,
      this.birthday,
      this.height = 150,
      this.weight = 50,
      this.duration = 0,
      this.weightTarget = 50});

  @override
  final String? fullname;
  @override
  final String? phoneNumber;
  @override
  @JsonKey()
  final bool isMale;
  @override
  final DateTime? birthday;
  @override
  @JsonKey()
  final double height;
  @override
  @JsonKey()
  final double weight;
  @override
  @JsonKey()
  final int duration;
  @override
  @JsonKey()
  final double weightTarget;

  @override
  String toString() {
    return 'OnboardingModel(fullname: $fullname, phoneNumber: $phoneNumber, isMale: $isMale, birthday: $birthday, height: $height, weight: $weight, duration: $duration, weightTarget: $weightTarget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnboardingModel &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.isMale, isMale) || other.isMale == isMale) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.weightTarget, weightTarget) ||
                other.weightTarget == weightTarget));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullname, phoneNumber, isMale,
      birthday, height, weight, duration, weightTarget);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnboardingModelCopyWith<_$_OnboardingModel> get copyWith =>
      __$$_OnboardingModelCopyWithImpl<_$_OnboardingModel>(this, _$identity);
}

abstract class _OnboardingModel implements OnboardingModel {
  const factory _OnboardingModel(
      {final String? fullname,
      final String? phoneNumber,
      final bool isMale,
      final DateTime? birthday,
      final double height,
      final double weight,
      final int duration,
      final double weightTarget}) = _$_OnboardingModel;

  @override
  String? get fullname;
  @override
  String? get phoneNumber;
  @override
  bool get isMale;
  @override
  DateTime? get birthday;
  @override
  double get height;
  @override
  double get weight;
  @override
  int get duration;
  @override
  double get weightTarget;
  @override
  @JsonKey(ignore: true)
  _$$_OnboardingModelCopyWith<_$_OnboardingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
