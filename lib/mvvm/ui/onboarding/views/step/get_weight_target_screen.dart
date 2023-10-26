import 'package:flutter/material.dart';
import 'package:flutter_base_clean_architecture/core/components/extensions/context_extensions.dart';
import 'package:flutter_base_clean_architecture/generated/l10n.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/onboarding/views/widgets/onboarding_step_layout.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class GetWeightTargetScreen extends StatefulWidget {
  const GetWeightTargetScreen({super.key});

  @override
  State<GetWeightTargetScreen> createState() => _GetWeightTargetScreenState();
}

class _GetWeightTargetScreenState extends State<GetWeightTargetScreen> {
  int weight = 50;

  Widget _buildItemList(BuildContext context, int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 150,
          height: 200,
          decoration: BoxDecoration(
            color: (index == weight) ? context.primaryColor : Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 3, color: context.primaryColor),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$index',
                  style: context.textTheme.displayMedium?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  'Kg',
                  style: context.textTheme.headlineMedium?.copyWith(
                    color: context.textColor,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return OnboardingStepLayout(
      title: S.of(context).weightTarget,
      description: S.of(context).weightTargetDesc,
      child: SizedBox(
        width: context.widthDevice,
        height: 300,
        child: ScrollSnapList(
          itemBuilder: _buildItemList,
          itemSize: 150,
          dynamicItemSize: true,
          itemCount: 150,
          initialIndex: weight.toDouble(),
          onItemFocus: (int value) {
            setState(() {
              weight = value;
            });
          },
        ),
      ),
    );
  }
}