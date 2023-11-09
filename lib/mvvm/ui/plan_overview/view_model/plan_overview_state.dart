part of 'plan_overview_view_model.dart';

@freezed
class PlanOverViewState with _$PlanOverViewState {
  const factory PlanOverViewState.initial({required PlanOverViewData data}) =
      _Initial;
  const factory PlanOverViewState.success({required PlanOverViewData data}) =
      _Success;

  const factory PlanOverViewState.loading({required PlanOverViewData data}) =
      _Loading;

  const factory PlanOverViewState.getCurrentPlanSuccess(
      {required PlanOverViewData data}) = _GetCurrentPlanSuccess;

  const factory PlanOverViewState.getCurrentPlanFailed({
    required PlanOverViewData data,
    required String message,
  }) = _GetCurrentPlanFailed;
}
