import 'package:collection/collection.dart';
import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/generated/l10n.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/step/fill_your_profile_screen.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/step/get_height_screen.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/step/get_old_screen.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/step/get_weight_screen.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/step/get_weight_target_screen.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/step/select_duration_screen.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/step/select_gender_screen.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:im_stepper/stepper.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int activeStep = 0;
  int upperBound = 6;

  TextEditingController fullNameCtrl = TextEditingController();
  TextEditingController phoneCtrl = TextEditingController();
  bool isMale = true;
  DateTime? birthday;
  int height = 150;
  int weight = 50;
  int duration = 0;
  int target = 50;

  @override
  void dispose() {
    fullNameCtrl.dispose();
    phoneCtrl.dispose();
    super.dispose();
  }

  void onTapNext() {
    if (activeStep < upperBound) {
      setState(() {
        activeStep++;
      });
    } else {
      context.openListPageWithRoute(Routes.dashboard);
    }
  }

  @override
  Widget build(BuildContext context) {
    final body = [
      FillYourProfileScreen(
        fullNameCtrl: fullNameCtrl,
        phoneCtrl: phoneCtrl,
      ),
      SelectGenderScreen(
        isMale: isMale,
        genderChange: (value) {
          setState(() {
            isMale = value;
          });
        },
      ),
      GetOldScreen(
        initialDateTime: birthday,
        onDateTimeChanged: (value) {
          setState(() {
            birthday = value;
          });
        },
      ),
      GetHeightScreen(
        initHeight: height,
        onChange: (value) {
          setState(() {
            height = value;
          });
        },
      ),
      GetWeightScreen(
        initWeight: weight,
        onChange: (value) {
          setState(() {
            weight = value;
          });
        },
      ),
      SelectDurationScreen(
        initDuration: duration,
        onChange: (value) {
          setState(() {
            duration = value;
          });
        },
      ),
      GetWeightTargetScreen(
        initTarget: target,
        onChange: (value) {
          setState(() {
            target = value;
          });
        },
      ),
    ];

    return Scaffold(
      bottomSheet: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            if (activeStep > 0)
              Expanded(
                child: ButtonCustom(
                  height: 45.0,
                  radius: 5.0,
                  onPress: () {
                    setState(() {
                      activeStep--;
                    });
                  },
                  child: Text(
                    S.of(context).previous,
                    style: context.titleMedium.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            const SizedBox(width: 10),
            Expanded(
              child: ButtonCustom(
                height: 45.0,
                radius: 5.0,
                color: activeStep < upperBound
                    ? context.primaryColor
                    : Colors.green,
                onPress: onTapNext,
                child: Text(
                  activeStep < upperBound
                      ? S.of(context).next
                      : S.of(context).letStart,
                  style: context.titleMedium.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0).copyWith(top: kToolbarHeight),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 75.0,
                  child: IconStepper(
                    direction: Axis.horizontal,
                    icons: [
                      Icons.login,
                      Icons.scale,
                      Icons.cake,
                      Icons.height,
                      Icons.person,
                      Icons.timer_outlined,
                      Icons.golf_course_sharp,
                    ].mapIndexed((index, icon) {
                      final color = (index == activeStep)
                          ? Colors.white
                          : context.titleLarge.color;
                      return Icon(icon, size: 12.0, color: color);
                    }).toList(),
                    stepColor: Theme.of(context).scaffoldBackgroundColor,
                    activeStep: activeStep,
                    activeStepColor: context.primaryColor,
                    enableNextPreviousButtons: false,
                    enableStepTapping: false,
                    lineColor: Theme.of(context).primaryColor,
                    stepReachedAnimationEffect: Curves.easeInOutCubic,
                    onStepReached: (index) {
                      setState(() {
                        activeStep = index;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 30),
                body[activeStep],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
