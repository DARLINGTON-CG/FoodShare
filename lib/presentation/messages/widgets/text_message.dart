import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/paragraph.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

import 'chat_message.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    this.message,
  }) : super(key: key);

  final ChatMessage? message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 0.75,
        vertical: kDefaultPadding / 2,
      ),
      //TODO: work on making the width adaptive. But this is good for the mean time.
      constraints:const BoxConstraints(maxWidth: 200),
      decoration: BoxDecoration(
        color: message!.isSender
            ? const Color(0xFF3212F1).withOpacity(0.8)
            : const Color(0xFF3212F1).withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        message!.text,
        style: GoogleFonts.lato(
          fontSize: 14,
          color: message!.isSender
              ? Colors.white
              : Theme.of(context).textTheme.bodyText1!.color,
        ),
      ),
    );
  }
}
