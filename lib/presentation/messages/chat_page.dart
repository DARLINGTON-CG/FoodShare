import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../application/messaging/create_messages/create_messages_bloc.dart';
import '../../application/messaging/read_messages/read_messages_bloc.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/user.dart';
import '../../domain/core/errors.dart';
import '../../domain/messaging/chat_room.dart';
import '../../domain/posts/post.dart';
import '../../injector.dart';
import 'widgets/body.dart';
import 'widgets/custom_dialog.dart';

class ChatPage extends StatelessWidget {
  final ChatRoom chatRoom;
  final String chatRoomId;

  const ChatPage({Key? key, required this.chatRoom, required this.chatRoomId})
      : super(key: key);

  String getUserId() {
    final Option<LocalUser> userOption = getIt<IAuthFacade>().getSignedInUser();
    final LocalUser user =
        userOption.getOrElse(() => throw NotAuthenticatedError());
    return user.id.getOrCrash();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          shadowColor: Colors.grey.withOpacity(0.3),
          title: BlocBuilder<ReadMessagesBloc, ReadMessagesState>(
            // buildWhen: (ReadMessagesState previous, ReadMessagesState current) {
            //   // String usernamePrevious = previous.map(
            //   //   initial: (_) => "",
            //   //   loadingProgress: (_) => "",
            //   //   // ignore: always_specify_types
            //   //   loadSuccess: (success) {
            //   //     if (success.chatRoom.isEmpty()) {
            //   //       return chatRoom.owner.username.getOrCrash();
            //   //     } else {
            //   //       final ChatRoom elm = success.chatRoom.iter.firstWhere(
            //   //           (ChatRoom chatRoomElem) =>
            //   //               chatRoomId ==
            //   //               (chatRoomElem.post.id.getOrCrash() +
            //   //                   chatRoomElem.requester.username.getOrCrash()));
            //   //       final String username =
            //   //           getUserId() == elm.owner.userId.getOrCrash()
            //   //               ? elm.requester.userId.getOrCrash()
            //   //               : elm.owner.userId.getOrCrash();
            //   //       return username;
            //   //     }
            //   //   },

            //   //   // success.chatRoom[chatRoomIndex].owner.username
            //   //   //     .getOrCrash(),
            //   //   loadFailure: (_) => "",
            //   // );
            //   // String usernameCurrent = current.map(
            //   //   initial: (_) => "",
            //   //   loadingProgress: (_) => "",
            //   //   // ignore: always_specify_types
            //   //   loadSuccess: (success) => success.chatRoom.isEmpty()
            //   //       ? ""
            //   //       : success.chatRoom[chatRoomIndex].owner.username
            //   //           .getOrCrash(),
            //   //   loadFailure: (_) => "",
            //   // );
            //   // // print(usernameCurrent );
            //   // // print(usernamePrevious);
            //   // return usernameCurrent != usernamePrevious;
            // },
            builder: (BuildContext context, ReadMessagesState state) {
              return Text(
                state.map(
                  initial: (_) => "...",
                  loadingProgress: (_) => "...",
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
                      return chatRoom.owner.username.getOrCrash();
                    } else {
                      final ChatRoom elm = success.chatRoom.iter.firstWhere(
                          (ChatRoom chatRoomElem) =>
                              chatRoomId ==
                              (chatRoomElem.post.id.getOrCrash() +
                                  chatRoomElem.requester.username
                                      .getOrCrash()));
                      final String username =
                          getUserId() == elm.owner.userId.getOrCrash()
                              ? elm.requester.username.getOrCrash()
                              : elm.owner.username.getOrCrash();
                      return username;
                    }
                  },
                  loadFailure: (_) => "-",
                ),
                style: GoogleFonts.lato(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              );
            },
          ),
          actions: <Widget>[
            BlocBuilder<ReadMessagesBloc, ReadMessagesState>(
              builder: (BuildContext context, ReadMessagesState state) {
                final Post? post = state.map(
                  initial: (_) => null,
                  loadingProgress: (_) => null,
                  // ignore: always_specify_types
                  loadSuccess: (success) {
                    ChatRoom element = success.chatRoom.iter.firstWhere(
                        (ChatRoom chatRoomElem) =>
                            chatRoomId ==
                            (chatRoomElem.post.id.getOrCrash() +
                                chatRoomElem.requester.username.getOrCrash()),
                        orElse: () => ChatRoom.empty());
                    if (success.chatRoom.isEmpty() ||  !(element.owner.userId.isValid())) {
                      return chatRoom.post;
                    } else {
                      final ChatRoom elm = success.chatRoom.iter.firstWhere(
                          (ChatRoom chatRoomElem) =>
                              chatRoomId ==
                              (chatRoomElem.post.id.getOrCrash() +
                                  chatRoomElem.requester.username
                                      .getOrCrash()));

                      return elm.post;
                    }
                  },
                  loadFailure: (_) => null,
                );
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: post == null
                      ? const Icon(
                          Icons.cancel,
                          color: Colors.red,
                        )
                      : IconButton(
                          onPressed: () {
                            showCustomDialogBox(context, post);
                          },
                          icon: const Icon(
                            Icons.post_add_rounded,
                            size: 25,
                          )),
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.paid_rounded,
                size: 25,
                color: Color(0xFF3212F1),
              ),
            ),
          ],
        ),
        bottomSheet: BlocProvider<CreateMessagesBloc>(
            create: (BuildContext context) => getIt<CreateMessagesBloc>()
              ..add(CreateMessagesEvents.initialized(optionOf(chatRoom))),
            child: BlocListener<CreateMessagesBloc, CreateMessagesState>(
                listener: (BuildContext context, CreateMessagesState state) {},
                child: BottomSheet(
                    onClosing: () {},
                    elevation: 0.5,
                    enableDrag: false,
                    builder: (BuildContext context) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                blurRadius: 1,
                                color: Colors.grey.withOpacity(0.5),
                                offset: const Offset(0, 1),
                                spreadRadius: 0.5)
                          ],
                        ),
                        child: SafeArea(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20 * 0.75,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                const Icon(
                                  Icons.data_saver_on,
                                  color: Colors.grey,
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: TextField(
                                    style: GoogleFonts.lato(
                                        color: Colors.black, fontSize: 17),
                                    textAlignVertical: TextAlignVertical.bottom,
                                    onChanged: (String value) {
                                      context.read<CreateMessagesBloc>().add(
                                          CreateMessagesEvents.messageChanged(
                                              value));
                                    },
                                    minLines: 1,
                                    maxLines: 5,
                                    decoration: InputDecoration(
                                        hintText: 'Message',
                                        contentPadding:
                                            const EdgeInsets.only(bottom: 0),
                                        isDense: true,
                                        border: InputBorder.none,
                                        hintStyle: GoogleFonts.lato(
                                            color: Colors.grey, fontSize: 15)),
                                    keyboardType: TextInputType.multiline,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                InkWell(
                                  onTap: () {
                                    if (context
                                        .read<CreateMessagesBloc>()
                                        .state
                                        .currentMessage
                                        .isNotEmpty) {
                                      context.read<CreateMessagesBloc>().add(
                                          const CreateMessagesEvents.saved());
                                    }
                                  },
                                  child: const Icon(
                                    Icons.send,
                                    color: Color(0xFF3212F1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    })
                //}
                )),
        body: Body(chatRoomId: chatRoomId),
      ),
    );
  }
}
