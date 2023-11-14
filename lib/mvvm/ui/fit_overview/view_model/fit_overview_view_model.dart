import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/me/entity/calories_chart/calories_chart.dart';
import 'package:fit_life/mvvm/me/entity/upcoming_workout/upcoming_workout.dart';
import 'package:fit_life/mvvm/repo/calories_repositories.dart';
import 'package:fit_life/mvvm/repo/exercise_repositories.dart';
import 'package:fit_life/mvvm/repo/plan_repositories.dart';
import 'package:fit_life/mvvm/ui/fit_overview/view_model/fit_overview_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';

part 'fit_overview_state.dart';

part 'fit_overview_view_model.freezed.dart';

final fitOverViewNotifier =
    AutoDisposeStateNotifierProvider<FitOverViewViewModel, FitOverViewState>(
        (ref) => FitOverViewViewModel());

@injectable
class FitOverViewViewModel extends StateNotifier<FitOverViewState> {
  final _planRepositories = injector.get<PlanRepositories>();
  final _exerciseRepositories = injector.get<ExerciseRepositories>();
  final _caloriesRepositories = injector.get<CaloriesRepositories>();

  ///---------------
  FitOverViewData get data => state.data;
  FitOverViewViewModel()
      : super(
          _Initial(
            data: FitOverViewData(
              caloriesChart: CaloriesChart(
                heartRate: 0,
                todo: 0.0,
                calories: List.generate(7, (_) => 0),
              ),
            ),
          ),
        );

  void onSelectedDate(List<DateTime> times) {
    state = _SelectedDataSuccess(data: data.copyWith(rangeDate: times));
  }

  void getUpcomingWorkout() {
    state = state.copyWith(data: data.copyWith(isLoadingUpcomingWorkout: true));

    Future.delayed(
      const Duration(seconds: 3),
      () {
        state = _GetUpComingSuccess(
            data: state.data
                .copyWith(isLoadingUpcomingWorkout: false, upcomingWorkouts: [
          UpcomingWorkout(
            title: 'Dash Strength',
            minutes: 30,
            kCalo: 200,
            startTime: DateTime(2021, 10, 10, 17, 30),
          ),
        ]));
      },
    );
  }

  Future<void> getCaloriesChart() async {
    state = state.copyWith(data: data.copyWith(isLoadingCaloriesChart: true));
    final response = await _caloriesRepositories.getCaloriesChart(
        startDate: data.rangeDate.first, endTime: data.rangeDate.last);
    await Future.delayed(const Duration(seconds: 2));
    state = response.fold(
      ifLeft: (error) => _GetCaloriesChartFailed(
        data: data.copyWith(isLoadingCaloriesChart: false),
        message: error.message,
      ),
      ifRight: (rData) => _GetCaloriesChartSuccess(
        data: data.copyWith(
          caloriesChart: rData,
          isLoadingCaloriesChart: false,
        ),
      ),
    );
  }

  Future<void> getExerciseCategory() async {
    state =
        state.copyWith(data: data.copyWith(isLoadingExerciseCategory: true));
    final response = await _exerciseRepositories.getExerciseCategories(
        currentPage: 0, perPage: 3);
    await Future.delayed(const Duration(seconds: 3));
    state = response.fold(
      ifLeft: (error) => _GetExerciseCategoryFailed(
        data: data.copyWith(isLoadingExerciseCategory: false),
        message: error.message,
      ),
      ifRight: (rData) => _GetExerciseCategorySuccess(
        data: data.copyWith(
            isLoadingExerciseCategory: false, exerciseCategories: rData),
      ),
    );
  }
}
