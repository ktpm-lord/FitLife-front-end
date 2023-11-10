import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/enum/duration_exercise.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/core/components/widgets/fit_life/divider_dot.dart';
import 'package:fit_life/mvvm/ui/health_overview/ob/health_overview_row.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/step/get_height_screen.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/step/get_weight_screen.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/step/get_weight_target_screen.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/step/select_duration_screen.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/step/select_gender_screen.dart';
import 'package:flutter/material.dart';

class BottomEditInformation extends StatefulWidget {
  final HealthOverviewRow type;
  const BottomEditInformation({super.key, required this.type});

  @override
  State<BottomEditInformation> createState() => _BottomEditInformationState();
}

class _BottomEditInformationState extends State<BottomEditInformation> {
  Object? data;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        maxHeight: context.heightDevice * .9,
        minHeight: context.heightDevice * .8,
      ),
      child: Scaffold(
        bottomSheet: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ButtonCustom(
            height: 45.0,
            radius: 5.0,
            onPress: () => context.popArgs(data),
            child: Text(
              "Update",
              style: context.titleMedium
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15.0),
            const Align(alignment: Alignment.center, child: DividerDot()),
            const SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "Update ${widget.type.renderText}",
                style:
                    context.titleMedium.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 5.0),
            const Divider(),
            const SizedBox(height: 5.0),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: switch (widget.type) {
                      HealthOverviewRow.duration => SelectDurationScreen(
                          onChange: (d) =>
                              data = DurationExercise.values[d].name,
                        ),
                      HealthOverviewRow.weight => GetWeightScreen(
                          onChange: (d) => data = d.toInt(),
                        ),
                      HealthOverviewRow.height => GetHeightScreen(
                          onChange: (d) => data = d.toInt(),
                        ),
                      HealthOverviewRow.gender => SelectGenderScreen(
                          genderChange: (d) => data = d,
                        ),
                      _ => GetWeightTargetScreen(
                          onChange: (d) => data = d.toInt(),
                        )
                    },
                  ),
                  const SizedBox(height: 100.0),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
