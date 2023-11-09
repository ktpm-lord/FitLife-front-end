import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/repo/plan_repositories.dart';
import 'package:fit_life/mvvm/ui/plan_overview/view_model/plan_overview_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'plan_overview_state.dart';

part 'plan_overview_view_model.freezed.dart';

final planOverviewStateNotifier =
    AutoDisposeStateNotifierProvider<PlanOverViewViewModel, PlanOverViewState>(
        (ref) => PlanOverViewViewModel());

@injectable
class PlanOverViewViewModel extends StateNotifier<PlanOverViewState> {
  final _planRepositories = injector.get<PlanRepositories>();
  PlanOverViewViewModel() : super(const _Initial(data: PlanOverViewData()));

  PlanOverViewData get data => state.data;

  Future<void> getCurrentPlan() async {
    state = _Loading(data: data);
    final response = await _planRepositories.getCurrentPlan();
    state = response.fold(
      ifLeft: (error) =>
          _GetCurrentPlanFailed(data: data, message: error.message),
      ifRight: (currentPlan) =>
          _GetCurrentPlanSuccess(data: data.copyWith(currentPlan: currentPlan)),
    );
  }
}
