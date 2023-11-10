import 'package:flutter/material.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/generated/l10n.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/widgets/onboarding_step_layout.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class GetWeightTargetScreen extends StatefulWidget {
  final Function(int)? onChange;
  final int? initTarget;

  const GetWeightTargetScreen({
    super.key,
    this.onChange,
    this.initTarget,
  });

  @override
  State<GetWeightTargetScreen> createState() => _GetWeightTargetScreenState();
}

class _GetWeightTargetScreenState extends State<GetWeightTargetScreen> {
  late int weight;

  @override
  void initState() {
    weight = widget.initTarget ?? 50;
    super.initState();
  }

  Widget _buildItemList(BuildContext context, int index) {
    final fontColor =
        (index == weight) ? Colors.white : context.titleLarge.color;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 150,
          height: 200,
          decoration: BoxDecoration(
            color: (index == weight)
                ? context.primaryColor
                : Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 3, color: context.primaryColor),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$index',
                  style: context.titleLarge.copyWith(
                    fontSize: 40.0,
                    color: fontColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  'Kg',
                  style: context.titleLarge.copyWith(
                    fontSize: 40.0,
                    color: fontColor,
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
            if (widget.onChange != null) {
              widget.onChange!(value);
            }
            setState(() {
              weight = value;
            });
          },
        ),
      ),
    );
  }
}
