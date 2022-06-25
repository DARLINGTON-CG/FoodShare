import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../domain/utility/important_enums.dart';
import 'constants.dart';
import 'audio_message.dart';
import 'text_message.dart';
import 'image_message.dart';

import 'chat_message.dart';

class DisplayMessage extends StatelessWidget {
  final ChatMessage message;
  final String imageUrl;

  const DisplayMessage({
    Key? key,
    required this.message,
    required this.imageUrl
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget messageContaint(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
        case ChatMessageType.audio:
          return AudioMessage(message: message);
        case ChatMessageType.image:
          return ImageMessage(imageUrl: message.text,);
        default:
          return const SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        mainAxisAlignment:
            message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: <Widget>[
          if (!message.isSender) ...<Widget>[
          CircleAvatar(
              radius: 12,
              backgroundImage:  CachedNetworkImageProvider(imageUrl),
            ),
            const SizedBox(width: kDefaultPadding / 2),
          ],
          messageContaint(message),
          if (message.isSender) MessageStatusDot(status: message.messageStatus)
        ],
      ),
    );
  }
}

class MessageStatusDot extends StatelessWidget {
  final MessageStatus? status;

  const MessageStatusDot({Key? key, this.status}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color dotColor(MessageStatus status) {
      switch (status) {
        case MessageStatus.notSend:
          return kErrorColor;
        case MessageStatus.notViewed:
          return Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.1);
        case MessageStatus.viewed:
          return kPrimaryColor;
        default:
          return Colors.transparent;
      }
    }

    return Container(
      margin: const EdgeInsets.only(left: kDefaultPadding / 2),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: dotColor(status!),
        shape: BoxShape.circle,
      ),
      child: Icon(
        status == MessageStatus.notSend ? Icons.close : Icons.done,
        size: 8,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
