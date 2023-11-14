import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/handle_time.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/fit_life/divider_dot.dart';
import 'package:fit_life/core/components/widgets/fit_life/workout_plan_item.dart';
import 'package:fit_life/core/components/widgets/pagination_view/default_pagination.dart';
import 'package:fit_life/core/components/widgets/range_date_picker_custom.dart';
import 'package:fit_life/mvvm/me/entity/workout_plan/workout_plan.dart';
import 'package:fit_life/mvvm/ui/auth/mixins/auth_mixin.dart';
import 'package:fit_life/mvvm/ui/plan_overview/view_model/view_more/view_more_plan_data.dart';
import 'package:fit_life/mvvm/ui/plan_overview/view_model/view_more/view_more_plan_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:easy_debounce/easy_debounce.dart';


class ViewMorePlan extends ConsumerStatefulWidget {
  const ViewMorePlan({super.key});

  @override
  ConsumerState<ViewMorePlan> createState() => _ViewMorePlanState();
}

class _ViewMorePlanState extends ConsumerState<ViewMorePlan> with AuthMixin {
  final _searchController = TextEditingController();

  final RangeDateController _rangeDateController = RangeDateController();

  ViewMorePlanViewModel get _vm => ref.read(viewMorePlanStateNotifier.notifier);

  ViewMorePlanData get _data => ref.watch(viewMorePlanStateNotifier).data;

  ViewMorePlanState get _state => ref.watch(viewMorePlanStateNotifier);

  List<WorkoutPlan>? get _items => _data.workoutPlans.items;

  DateTime get _startTime => _data.startDate ?? DateTime.now();

  DateTime get _endTime => _data.endDate ?? DateTime.now();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _vm.getSessionPlanHistory(content: "");
    });
  }

  void _onSelectedDate() async {
    final result = await context.pickWeekRange(_rangeDateController);
    if (result?.isNotEmpty ?? false) {
      _vm.selectRangeTime(
        startTime: result?.first ?? DateTime.now(),
        endTime: result?.last ?? DateTime.now(),
      );
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    _rangeDateController.dispose();
    super.dispose();
  }

  void _listenStateChange(ViewMorePlanState state) {
    state.maybeWhen(
      getItemFailed: (_, message) =>
          context.showSnackBar("🐛[Get item failed] $message"),
      selectDateSuccess: (data) =>
          _vm.getSessionPlanHistory(content: _searchController.text),
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
        viewMorePlanStateNotifier, (_, next) => _listenStateChange(next));

    return Container(
      constraints: BoxConstraints(
        maxHeight: context.heightDevice * .9,
        minHeight: context.heightDevice * .8,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15.0),
            const Align(
              alignment: Alignment.center,
              child: DividerDot(),
            ),
            const SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "All plan view",
                style:
                    context.titleMedium.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: _searchBox(),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15.0),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: Text(
                    getRangeDateFormat(_startTime, _endTime),
                    style: context.titleSmall.copyWith(fontSize: 12.0),
                  )),
                  TextButton(
                    onPressed: _onSelectedDate,
                    child: Text(
                      "Selected time",
                      style: context.titleSmall.copyWith(
                          color: primaryColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            const Divider(),
            const SizedBox(height: 5.0),
            if (!_state.loading)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  "You have ${_items?.length ?? 0} session plan (${_items?.length ?? 0} plans was completed)",
                  style: context.titleSmall.copyWith(
                      color: Theme.of(context).hintColor, fontSize: 12.0),
                ),
              ),
            const SizedBox(height: 5.0),
            Expanded(
              child: DefaultPagination(
                items: _items ?? const [],
                loading: _state.loading,
                itemBuilder: (_, index) => WorkoutPlanItemWidget(
                    workoutPlan: _items![index], progress: 0.6),
                listenScrollBottom: () =>
                    _vm.getSessionPlanHistory(content: _searchController.text),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _searchBox() {
    return TextField(
      controller: _searchController,
      decoration: textFieldDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(end: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                ImageConst.searchIcon,
                width: 22,
                height: 22,
                // ignore: deprecated_member_use
                color: context.titleLarge.color,
              ),
            ],
          ),
        ),
        labelText: 'Search',
        errorText: null,
      ).copyWith(
        hintText: "Type search ....",
        hintStyle:
            context.titleSmall.copyWith(color: Theme.of(context).hintColor),
      ), // InputDecoration(
      keyboardType: TextInputType.emailAddress,
      maxLines: 1,
      style: context.titleSmall,
      onChanged: (text) {
        EasyDebounce.debounce(
          'search',
          const Duration(milliseconds: 500),
          () => _vm.getSessionPlanHistory(content: text),
        );
      },
      textInputAction: TextInputAction.next,
      onSubmitted: (_) {},
    );
  }
}
