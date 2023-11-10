import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/generated/l10n.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/widgets/onboarding_step_layout.dart';

class SelectGenderScreen extends StatefulWidget {
  final Function(bool)? genderChange;
  final bool? isMale;
  const SelectGenderScreen({
    super.key,
    this.genderChange,
    this.isMale,
  });

  @override
  State<SelectGenderScreen> createState() => _SelectGenderScreenState();
}

class _SelectGenderScreenState extends State<SelectGenderScreen> {
  late bool isMale;

  @override
  void initState() {
    isMale = widget.isMale ?? true;
    super.initState();
  }

  Widget renderGenderBoxWidget({
    required String imageUrl,
    required String title,
    bool isMaleSex = true,
  }) {
    return Container(
      height: 180,
      width: 180,
      decoration: BoxDecoration(
        color: isMaleSex ? Colors.blue[100] : Colors.pink[100],
        border: isMale == isMaleSex
            ? Border.all(width: 2.5, color: context.titleLarge.color!)
            : null,
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        onTap: () {
          if (widget.genderChange != null) {
            widget.genderChange!(isMaleSex);
          }
          setState(() {
            isMale = isMaleSex;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageUrl,
              width: 50,
              height: 50,
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                title,
                style: context.textTheme.titleLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return OnboardingStepLayout(
      title: S.of(context).selectYourGender,
      description: S.of(context).genderDescription,
      child: Column(
        children: [
          renderGenderBoxWidget(
              imageUrl: ImageConst.manIcon,
              title: S.of(context).male,
              isMaleSex: true),
          const SizedBox(height: 20),
          renderGenderBoxWidget(
              imageUrl: ImageConst.womanIcon,
              title: S.of(context).female,
              isMaleSex: false),
        ],
      ),
    );
  }
}
