part of 'onboarding_view_model.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const OnboardingState._();

  const factory OnboardingState.initial({required OnboardingData data}) = _Initial;
  const factory OnboardingState.success({required OnboardingData data}) =
      _Success;
}
