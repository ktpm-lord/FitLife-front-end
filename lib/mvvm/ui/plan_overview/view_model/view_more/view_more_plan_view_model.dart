import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/me/entity/pagination/pagination.dart';
import 'package:fit_life/mvvm/me/entity/workout_plan/workout_plan.dart';
import 'package:fit_life/mvvm/repo/plan_repositories.dart';
import 'package:fit_life/mvvm/ui/plan_overview/view_model/view_more/view_more_plan_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'view_more_plan_state.dart';

part 'view_more_plan_view_model.freezed.dart';

class SearchPlanRequest {
  final String content;
  final DateTime startTime;
  final DateTime endTime;
  SearchPlanRequest({
    required this.content,
    required this.startTime,
    required this.endTime,
  });

  Map<String, dynamic> get toMap => {
        "content": content,
        "startTime": startTime.millisecondsSinceEpoch,
        "endTime": endTime.millisecondsSinceEpoch,
      };
}

final viewMorePlanStateNotifier =
    AutoDisposeStateNotifierProvider<ViewMorePlanViewModel, ViewMorePlanState>(
        (ref) => ViewMorePlanViewModel());

@injectable
class ViewMorePlanViewModel extends StateNotifier<ViewMorePlanState> {
  final _planRepositories = injector.get<PlanRepositories>();
  // ViewMorePlanViewModel(super.state);
  ViewMorePlanViewModel()
      : super(
          const _Initial(
              data: ViewMorePlanData(
                  workoutPlans: Pagination<WorkoutPlan>(items: []))),
        );

  ViewMorePlanData get data => state.data;

  Future<void> getSessionPlanHistory({required String content}) async {
    final isNewSearch = data.searchContent != content;
    if (state is _Loading && isNewSearch) return;
    final currentPage = isNewSearch ? 0 : data.workoutPlans.currentPage;

    state = _Loading(
      data: data.copyWith(
        workoutPlans: isNewSearch
            ? data.workoutPlans.copyWith(
                items: [],
                currentPage: currentPage,
              )
            : data.workoutPlans,
      ),
    );

    final response = await _planRepositories.fetchPlanByFilter(
      content: content,
      timeStart: data.startDate ?? DateTime.now(),
      timeFinish: data.endDate ?? DateTime.now(),
      currentPage: data.workoutPlans.currentPage,
    );
    Future.delayed(const Duration(seconds: 3), () {
      state = response.fold(
        ifLeft: (error) => _GetItemFailed(data: data, message: error.message),
        ifRight: (rData) => _GetItemSuccess(
          data: data.copyWith(
            workoutPlans: Pagination(
              items:
                  isNewSearch ? rData : [...data.workoutPlans.items, ...rData],
              currentPage: currentPage + 1,
              totalPage: data.workoutPlans.totalPage,
            ),
            searchContent: content,
          ),
        ),
      );
    });
  }

  void selectRangeTime(
      {required DateTime startTime, required DateTime endTime}) {
    state = _SelectDateSuccess(
        data: data.copyWith(startDate: startTime, endDate: endTime));
  }
}
