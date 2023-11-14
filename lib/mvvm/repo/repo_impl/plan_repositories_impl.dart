import 'package:dart_either/dart_either.dart';
import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/core/components/network/base_api.dart';
import 'package:fit_life/core/components/network/data_state.dart';
import 'package:fit_life/core/components/network/error_constant.dart';
import 'package:fit_life/mvvm/data/remote/plan/plan_api.dart';
import 'package:fit_life/mvvm/me/entity/plan/current_plan.dart';
import 'package:fit_life/mvvm/me/entity/workout_plan/workout_plan.dart';
import 'package:fit_life/mvvm/repo/plan_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PlanRepositories)
class PlanRepositoriesImpl extends BaseApi implements PlanRepositories {
  final PlanApi planApi;
  PlanRepositoriesImpl(this.planApi);

  @override
  Future<SResult<CurrentPlan>> getCurrentPlan() async {
    try {
      final call =
          await getStateOf(request: () async => await planApi.getCurrentPlan());
      if (call is DataFailed) {
        return Either.left(
          AppException(
              message: call.dioError?.message ?? ErrorConstant.basicError),
        );
      }
      if (call.data == null) {
        return Either.left(AppException(message: ErrorConstant.dataNullError));
      }
      return Either.right(call.data!.toCurrentPlan);
    } catch (e) {
      return Either.left(AppException(message: e.toString()));
    }
  }

  @override
  Future<SResult<List<WorkoutPlan>>> fetchPlanByFilter({
    required String content,
    required DateTime timeStart,
    required DateTime timeFinish,
    required int currentPage,
  }) async {
    Future.delayed(const Duration(seconds: 3));
    return Either.right([
      ...List.generate(
        5,
        (index) => WorkoutPlan(
          name: 'How to lose 10kg in 14 days',
          description: "Target to lose 10kg in 3 months",
          startDate: DateTime.now(),
          endDate: DateTime.now().add(const Duration(days: 14)),
        ),
      )
    ]);
  }
}
