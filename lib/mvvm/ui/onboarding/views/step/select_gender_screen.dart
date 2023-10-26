import 'package:flutter/material.dart';
import 'package:flutter_base_clean_architecture/core/components/extensions/context_extensions.dart';
import 'package:flutter_base_clean_architecture/generated/l10n.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/onboarding/views/widgets/onboarding_step_layout.dart';

class SelectGenderScreen extends StatefulWidget {
  const SelectGenderScreen({super.key});

  @override
  State<SelectGenderScreen> createState() => _SelectGenderScreenState();
}

class _SelectGenderScreenState extends State<SelectGenderScreen> {
  bool isMale = true;

  Widget renderGenderBoxWidget({
    required String imageUrl,
    required String title,
    bool isMaleSex = true,
  }) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: isMaleSex ? Colors.blue[100] : Colors.pink[100],
        border: isMale == isMaleSex
            ? Border.all(width: 2.5, color: Colors.black)
            : null,
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        onTap: () {
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
              imageUrl: 'assets/images/man.png',
              title: S.of(context).male,
              isMaleSex: true),
          const SizedBox(height: 20),
          renderGenderBoxWidget(
              imageUrl: 'assets/images/woman.png',
              title: S.of(context).female,
              isMaleSex: false),
        ],
      ),
    );
  }
}