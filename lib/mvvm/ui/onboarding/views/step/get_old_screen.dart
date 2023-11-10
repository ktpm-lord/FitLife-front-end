import 'package:flutter/cupertino.dart';
import 'package:fit_life/generated/l10n.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/widgets/onboarding_step_layout.dart';

class GetOldScreen extends StatelessWidget {
  final Function(DateTime? timePicker)? onDateTimeChanged;
  final DateTime? initialDateTime;

  const GetOldScreen({
    super.key,
    this.onDateTimeChanged,
    this.initialDateTime,
  });

  @override
  Widget build(BuildContext context) {
    return OnboardingStepLayout(
      title: S.of(context).howOldAreYou,
      description: S.of(context).oldDescription,
      child: Column(
        children: [
          Center(
            child: SizedBox(
              height: 250,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                minimumYear: DateTime.now().year - 100,
                maximumYear: DateTime.now().year + 100,
                onDateTimeChanged: (value) {
                  if (onDateTimeChanged != null) {
                    onDateTimeChanged!(value);
                  }
                },
                initialDateTime: initialDateTime ?? DateTime(1990, 1, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
