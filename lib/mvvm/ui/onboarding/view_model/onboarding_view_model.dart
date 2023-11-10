import 'package:fit_life/mvvm/ui/onboarding/view_model/onboarding_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';

part 'onboarding_state.dart';

part 'onboarding_view_model.freezed.dart';

final onboardingStateNotifier =
    AutoDisposeStateNotifierProvider<OnboardingViewModel, OnboardingState>(
        (ref) => OnboardingViewModel());

@injectable
class OnboardingViewModel extends StateNotifier<OnboardingState> {
  OnboardingViewModel() : super(const _Initial(data: OnboardingData()));

  void updateData(OnboardingData data) {
    state = _Initial(data: data);
  }

  void updateUserInformation() {
    print("Update user information successfully");
  }
}
