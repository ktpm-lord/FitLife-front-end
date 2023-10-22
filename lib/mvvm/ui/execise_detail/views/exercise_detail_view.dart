import 'package:collection/collection.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/core/components/widgets/dot_custom.dart';
import 'package:fit_life/core/components/widgets/video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ExerciseDetailView extends StatefulWidget {
  const ExerciseDetailView({super.key});

  @override
  State<ExerciseDetailView> createState() => _ExerciseDetailViewState();
}

class _ExerciseDetailViewState extends State<ExerciseDetailView> {
  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;

  Color get _primaryColor => Theme.of(context).primaryColor;

  EdgeInsets get _itemPadding => const EdgeInsets.symmetric(horizontal: 15.0);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        backgroundColor: _backgroundColor,
        appBar: AppBar(
          backgroundColor: _backgroundColor,
          elevation: 0,
          leading: IconButton(
            onPressed: () => context.pop(),
            icon: Icon(Icons.arrow_back, color: context.titleLarge.color),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz, color: context.titleMedium.color),
            )
          ],
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ButtonCustom(
            onPress: () {},
            height: 45.0,
            child: Text(
              'Save',
              style: context.titleMedium
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(2.0),
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).shadowColor.withOpacity(0.1),
                    blurRadius: 5.0,
                  )
                ],
                color: Theme.of(context).cardColor,
              ),
              width: double.infinity,
              height: context.heightDevice * 0.25,
              child: const VideoPlayerUI(
                url:
                    "https://github.com/minhunsocute/Data-GHealth/blob/main/workout_image/Dragon%20Flag%20Sit-Up.mp4?raw=true",
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            const SizedBox(height: 15.0),
            Padding(
              padding: _itemPadding,
              child: Text(
                'Workout 1: Chest day',
                style: context.titleSmall.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).hintColor),
              ),
            ),
            _headerText(content: 'Barbell Bench Press'),
            const SizedBox(height: 5.0),
            Padding(
              padding: _itemPadding,
              child: Text(
                'Easy | 350 calories burn',
                style: context.titleSmall.copyWith(
                    fontSize: 12.0, color: Theme.of(context).hintColor),
              ),
            ),
            const SizedBox(height: 10.0),
            _headerText(content: 'Description'),
            Padding(
              padding: _itemPadding,
              child: ReadMoreText(
                'one\'s ability to execute daily activities with optimal performance, endurance, and strength with the management of disease, fatigue, and stress and reduced sedentary behavio, fatigue, and stress and reduced sedentary behavio, fatigue, and stress and reduced sedentary behavio',
                trimLines: 2,
                trimCollapsedText: ' Show more',
                trimExpandedText: ' Show less',
                lessStyle: context.titleSmall.copyWith(color: _primaryColor),
                moreStyle: context.titleSmall.copyWith(color: _primaryColor),
                style: context.titleSmall.copyWith(
                  color: Theme.of(context).hintColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            Padding(
              padding: _itemPadding,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'How to do it?',
                    style: context.titleLarge
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Text(
                    '4 steps',
                    style: context.titleMedium.copyWith(
                        fontSize: 12.0, color: Theme.of(context).hintColor),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: _itemPadding,
              child: _stepField(
                steps: {
                  'Lie on a bench with your arms bent ':
                      'Lie on a bench with your arms bent and your elbows by your ears so that you can grip the top of the bench.',
                  'Lie on a bench with your arms bent 1':
                      'Lie on a bench with your arms bent and your elbows by your ears so that you can grip the top of the bench.',
                  'Lie on a bench with your arms bent 2':
                      'Lie on a bench with your arms bent and your elbows by your ears so that you can grip the top of the bench.',
                },
              ),
            ),
            const SizedBox(height: 15.0),
            _headerText(content: 'Custom Repetitions'),
            const SizedBox(height: 10.0),
            _repetitionsField(context),
            const SizedBox(height: 50.0),
          ],
          // .expand((e) => [e, const SizedBox(height: 5.0)]).toList(),
        ),
      ),
    );
  }

  SizedBox _repetitionsField(BuildContext context) {
    return SizedBox(
      height: context.heightDevice * 0.2,
      child: CupertinoPicker(
        looping: true,
        diameterRatio: 1,
        itemExtent: 64,
        onSelectedItemChanged: (int value) {},
        selectionOverlay: Container(
          decoration: BoxDecoration(
            border: Border.symmetric(
              horizontal:
                  BorderSide(width: 0.6, color: Theme.of(context).dividerColor),
            ),
          ),
        ),
        children: [
          ...[
            {'c': 360, 't': 45},
            {'c': 370, 't': 46},
            {'c': 380, 't': 47},
            {'c': 390, 't': 48},
            {'c': 400, 't': 49},
          ].map(
            (e) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    style: context.titleMedium,
                    children: [
                      TextSpan(text: '🔥 ${e['c']} Calories Burn  '),
                      TextSpan(
                        text: e['t'].toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      const TextSpan(text: '  times'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _headerText({required String content}) {
    return Padding(
      padding: _itemPadding,
      child: Text(
        content,
        style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _stepField({required Map<String, String> steps}) {
    final entries = steps.entries;
    final length = entries.length;
    return Column(
      children: [
        ...entries.mapIndexed((index, element) {
          return StepItemWidget(
            header: element.key,
            content: element.value,
            step: index + 1,
            isShowIndication: index < (length - 1),
          );
        })
      ],
    );
  }
}

class StepItemWidget extends StatelessWidget {
  final String header;
  final String content;
  final int step;
  final bool isShowIndication;
  const StepItemWidget({
    super.key,
    required this.header,
    required this.content,
    required this.step,
    required this.isShowIndication,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _header(context),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5.0)
              .copyWith(left: 22.0, bottom: 10.0),
          width: double.infinity,
          margin: const EdgeInsets.only(left: 68.0),
          decoration: DottedDecoration(
            linePosition: LinePosition.left,
            strokeWidth: 1.5,
            color: isShowIndication
                ? Theme.of(context).primaryColor
                : Colors.transparent,
          ),
          child: Text(
            content,
            style: context.titleSmall.copyWith(
              fontSize: 12.0,
              color: Theme.of(context).hintColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }

  Row _header(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 80.0,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  '${(step < 10) ? '0' : ''}$step',
                  style: context.titleMedium.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              _dot(context),
            ],
          ),
        ),
        const SizedBox(width: 10.0),
        Expanded(
          flex: 4,
          child: Text(
            header,
            overflow: TextOverflow.ellipsis,
            style: context.titleMedium.copyWith(fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }

  Container _dot(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 1, color: primaryColor),
      ),
      child: DotCustom(color: primaryColor, full: true, radius: 14.0),
    );
  }
}