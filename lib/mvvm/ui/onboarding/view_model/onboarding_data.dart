import 'package:fit_life/mvvm/ui/onboarding/view_model/onboarding_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_data.freezed.dart';

@freezed
class OnboardingData with _$OnboardingData {
  const factory OnboardingData({
    @Default(OnboardingModel()) OnboardingModel onboardingModel,
  }) = _OnboardingData;
}
