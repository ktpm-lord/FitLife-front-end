import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/core/components/widgets/text_field_icon.dart';
import 'package:fit_life/generated/l10n.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/widgets/onboarding_step_layout.dart';
import '../../../../../../core/components/extensions/context_extensions.dart';

class FillYourProfileScreen extends StatefulWidget {
  final String? imageUrl;
  final TextEditingController fullNameCtrl;
  final TextEditingController phoneCtrl;

  const FillYourProfileScreen({
    super.key,
    this.imageUrl,
    required this.fullNameCtrl,
    required this.phoneCtrl,
  });

  @override
  State<FillYourProfileScreen> createState() => _FillYourProfileScreenState();
}

class _FillYourProfileScreenState extends State<FillYourProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final widthDevice = context.widthDevice;

    return OnboardingStepLayout(
      title: S.of(context).fillYourProfile,
      description: S.of(context).alwayChangeItLater,
      child: Column(
        children: [
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  (widget.imageUrl == null)
                      ? Container(
                          width: widthDevice * 0.32,
                          height: widthDevice * 0.32,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(ImageConst.avatar),
                            ),
                          ),
                        )
                      : SizedBox(
                          width: widthDevice * 0.3,
                          height: widthDevice * 0.3,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              widget.imageUrl!,
                              width: widthDevice * 0.3,
                              height: widthDevice * 0.3,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                ],
              ),
              Positioned(
                bottom: 8,
                right: 8,
                child: InkWell(
                  onTap: () async {},
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: context.primaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Icon(
                      Icons.camera_alt,
                      size: 14.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 30),
          TextFieldWithIconWidget(
            hintText: S.of(context).fullname,
            controller: widget.fullNameCtrl,
            icon: Icons.account_circle_rounded,
          ),
          const SizedBox(height: 20),
          TextFieldWithIconWidget(
            hintText: S.of(context).phoneNumber,
            controller: widget.phoneCtrl,
            icon: Icons.phone,
          ),
        ],
      ),
    );
  }
}
