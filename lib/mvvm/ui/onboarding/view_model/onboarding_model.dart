import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_model.freezed.dart';

@freezed
class OnboardingModel with _$OnboardingModel {
  const factory OnboardingModel({
    String? fullname,
    String? phoneNumber,
    @Default(true) bool isMale,
    DateTime? birthday,
    @Default(150) double height,
    @Default(50) double weight,
    @Default(0) int duration,
    @Default(50) double weightTarget,
  }) = _OnboardingModel;
}
