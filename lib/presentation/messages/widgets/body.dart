import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../application/messaging/read_messages/read_messages_bloc.dart';
import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/user.dart';
import '../../../domain/core/errors.dart';
import '../../../domain/core/value_objects.dart';
import '../../../domain/messaging/chat_room.dart';
import '../../../domain/messaging/value_objects.dart';
import '../../../domain/utility/important_enums.dart';
import '../../../injector.dart';
import 'message.dart';

import 'constants.dart';
import 'chat_message.dart';

class Body extends StatelessWidget {
  final String chatRoomId;
  const Body({Key? key, required this.chatRoomId}) : super(key: key);

  String getUserId() {
    final Option<LocalUser> userOption = getIt<IAuthFacade>().getSignedInUser();
    final LocalUser user =
        userOption.getOrElse(() => throw NotAuthenticatedError());
    return user.id.getOrCrash();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadMessagesBloc, ReadMessagesState>(
      builder: (BuildContext context, ReadMessagesState state) {
        return state.map(
            initial: (_) => Center(
                child: Text("Messages....",
                    style: GoogleFonts.lato(fontSize: 15))),
            loadFailure: (_) => Center(
                child: Text("Messages....",
                    style: GoogleFonts.lato(fontSize: 15))),
            // ignore: always_specify_types
            loadSuccess: (success) {
              ChatRoom element = success.chatRoom.iter.firstWhere(
                  (ChatRoom chatRoomElem) =>
                      chatRoomId ==
                      (chatRoomElem.post.id.getOrCrash() +
                          chatRoomElem.requester.username.getOrCrash()),
                  orElse: () => ChatRoom.empty());
              if (success.chatRoom.isEmpty() ||
                  !(element.owner.userId.isValid())) {
                return Center(
                  child: Text(
                    "Messages....",
                    style: GoogleFonts.lato(fontSize: 17, color: Colors.black),
                  ),
                );
              } else {
                final ChatRoom elm = success.chatRoom.iter.firstWhere(
                    (ChatRoom chatRoomElem) =>
                        chatRoomId ==
                        (chatRoomElem.post.id.getOrCrash() +
                            chatRoomElem.requester.username.getOrCrash()));

                return Column(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        child: ListView.builder(
                          itemCount: elm.messages.getOrCrash().size,
                          physics: const BouncingScrollPhysics(),
                          reverse: true,
                          itemBuilder: (BuildContext context, int index) {
                            //Subtract one from the total size to compensate for index starting from 0
                            final int totalSize =
                                elm.messages.getOrCrash().size - 1;
                            final MessageBody message = elm.messages
                                .getOrCrash()
                                .get(totalSize - index)
                                .message;
                            final UniqueId id = elm.messages
                                .getOrCrash()
                                .get(totalSize - index)
                                .id;
                            final String imageUrl =
                                getUserId() != elm.requester.userId.getOrCrash()
                                    ? elm.requester.imageUrl.getOrCrash()
                                    : elm.owner.imageUrl.getOrCrash();
                            return Padding(
                              padding: index == 0
                                  ? const EdgeInsets.only(bottom: 70.0)
                                  : const EdgeInsets.only(bottom: 0),
                              child: DisplayMessage(
                                  imageUrl: imageUrl,
                                  message: ChatMessage(
                                    text: message.getOrCrash(),
                                    messageType: ChatMessageType.text,
                                    messageStatus: MessageStatus.viewed,
                                    isSender: getUserId() == id.getOrCrash(),
                                  )),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                );
              }
            },
            loadingProgress: (_) => Center(
                child: Text("Loading....",
                    style: GoogleFonts.lato(fontSize: 15))));
      },
    );
  }
}
