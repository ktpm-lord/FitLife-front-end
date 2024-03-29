import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/mvvm/object/entity/trainer/trainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/mvvm/ui/chat_bot/views/widgets/listening_icon.dart';

class InputWidget extends StatefulWidget {
  final TextEditingController textEditingController;
  final Function onSubmitted;
  final bool isListening;
  final Function() onVoiceStart;
  final Function() onVoiceStop;
  final bool micAvailable;
  final Trainer? trainerBot;
  final Function() onSelectionTrainer;
  const InputWidget({
    required this.textEditingController,
    required this.onSubmitted,
    required this.isListening,
    required this.onVoiceStart,
    required this.onVoiceStop,
    required this.micAvailable,
    required this.onSelectionTrainer,
    this.trainerBot,
    super.key,
  });

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  @override
  Widget build(BuildContext context) {
    final micIcon =
        !widget.micAvailable ? CupertinoIcons.mic_off : CupertinoIcons.mic_fill;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(28),
            ),
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 12.0),
              if (widget.trainerBot?.id.isNotEmpty ?? false) ...[
                InkWell(
                  onLongPress: widget.onSelectionTrainer,
                  onTap: () =>
                      context.trainerInformationBottom(widget.trainerBot!),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      widget.trainerBot!.image,
                      width: 30.0,
                      height: 30.0,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) {
                        return Image.asset(ImageConst.banner2,
                            fit: BoxFit.cover, width: 30.0, height: 30.0);
                      },
                    ),
                  ),
                )
              ] else ...[
                InkWell(
                  onTap: widget.onSelectionTrainer,
                  child: Image.asset(ImageConst.brainIcon,
                      fit: BoxFit.cover, width: 30.0, height: 30.0),
                )
              ],
              IconButton(
                onPressed: !widget.isListening
                    ? widget.onVoiceStart
                    : widget.onVoiceStop,
                padding: const EdgeInsets.only(bottom: 8),
                icon: widget.isListening
                    ? const ListeningIcon()
                    : Icon(
                        micIcon,
                        color: Theme.of(context).hintColor,
                      ),
              ),
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 5,
                  textInputAction: TextInputAction.newline,
                  decoration: InputDecoration(
                    hintText:
                        widget.isListening ? 'Listening...' : 'Type a message',
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.only(bottom: 8),
                  ),
                  controller: widget.textEditingController,
                  onSubmitted: (value) {
                    widget.onSubmitted.call();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  child: IconButton(
                    padding: const EdgeInsets.only(left: 0, right: 4),
                    icon: const Icon(Icons.send_rounded),
                    color: Colors.white,
                    onPressed: () {
                      if (!widget.isListening) {
                        widget.onSubmitted.call();
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
