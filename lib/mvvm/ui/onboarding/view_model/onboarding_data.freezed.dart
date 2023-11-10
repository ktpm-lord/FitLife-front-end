// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardingData {
  OnboardingModel get onboardingModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardingDataCopyWith<OnboardingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingDataCopyWith<$Res> {
  factory $OnboardingDataCopyWith(
          OnboardingData value, $Res Function(OnboardingData) then) =
      _$OnboardingDataCopyWithImpl<$Res, OnboardingData>;
  @useResult
  $Res call({OnboardingModel onboardingModel});

  $OnboardingModelCopyWith<$Res> get onboardingModel;
}

/// @nodoc
class _$OnboardingDataCopyWithImpl<$Res, $Val extends OnboardingData>
    implements $OnboardingDataCopyWith<$Res> {
  _$OnboardingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onboardingModel = null,
  }) {
    return _then(_value.copyWith(
      onboardingModel: null == onboardingModel
          ? _value.onboardingModel
          : onboardingModel // ignore: cast_nullable_to_non_nullable
              as OnboardingModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OnboardingModelCopyWith<$Res> get onboardingModel {
    return $OnboardingModelCopyWith<$Res>(_value.onboardingModel, (value) {
      return _then(_value.copyWith(onboardingModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OnboardingDataCopyWith<$Res>
    implements $OnboardingDataCopyWith<$Res> {
  factory _$$_OnboardingDataCopyWith(
          _$_OnboardingData value, $Res Function(_$_OnboardingData) then) =
      __$$_OnboardingDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OnboardingModel onboardingModel});

  @override
  $OnboardingModelCopyWith<$Res> get onboardingModel;
}

/// @nodoc
class __$$_OnboardingDataCopyWithImpl<$Res>
    extends _$OnboardingDataCopyWithImpl<$Res, _$_OnboardingData>
    implements _$$_OnboardingDataCopyWith<$Res> {
  __$$_OnboardingDataCopyWithImpl(
      _$_OnboardingData _value, $Res Function(_$_OnboardingData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onboardingModel = null,
  }) {
    return _then(_$_OnboardingData(
      onboardingModel: null == onboardingModel
          ? _value.onboardingModel
          : onboardingModel // ignore: cast_nullable_to_non_nullable
              as OnboardingModel,
    ));
  }
}

/// @nodoc

class _$_OnboardingData implements _OnboardingData {
  const _$_OnboardingData({this.onboardingModel = const OnboardingModel()});

  @override
  @JsonKey()
  final OnboardingModel onboardingModel;

  @override
  String toString() {
    return 'OnboardingData(onboardingModel: $onboardingModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnboardingData &&
            (identical(other.onboardingModel, onboardingModel) ||
                other.onboardingModel == onboardingModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onboardingModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnboardingDataCopyWith<_$_OnboardingData> get copyWith =>
      __$$_OnboardingDataCopyWithImpl<_$_OnboardingData>(this, _$identity);
}

abstract class _OnboardingData implements OnboardingData {
  const factory _OnboardingData({final OnboardingModel onboardingModel}) =
      _$_OnboardingData;

  @override
  OnboardingModel get onboardingModel;
  @override
  @JsonKey(ignore: true)
  _$$_OnboardingDataCopyWith<_$_OnboardingData> get copyWith =>
      throw _privateConstructorUsedError;
}
