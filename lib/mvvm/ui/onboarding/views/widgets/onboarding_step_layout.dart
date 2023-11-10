import 'package:flutter/material.dart';
import "../../../../../../core/components/extensions/context_extensions.dart";

class OnboardingStepLayout extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final String? description;
  final Widget? child;
  const OnboardingStepLayout({
    super.key,
    this.imageUrl,
    this.title,
    this.description,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title ?? "",
          style: context.titleLarge
              .copyWith(fontWeight: FontWeight.bold, fontSize: 24.0),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          description ?? "",
          style: context.titleSmall.copyWith(
            color: context.textColor,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        if (child != null) child!,
      ],
    );
  }
}
