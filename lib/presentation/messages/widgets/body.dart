import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rive/rive.dart';
import 'package:dartz/dartz.dart' as dartz;

import '../../../application/messaging/create_messages/create_messages_bloc.dart';
import '../../../application/messaging/read_messages/read_messages_bloc.dart';
import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/user.dart';
import '../../../domain/core/errors.dart';
import '../../../domain/core/value_objects.dart';
import '../../../domain/messaging/chat_room.dart';
import '../../../domain/messaging/i_message_repository.dart';
import '../../../domain/messaging/value_objects.dart';
import '../../../domain/utility/important_enums.dart';
import '../../../domain/utility/useful_functions.dart';
import '../../../injector.dart';
import '../../anim/page/slide_up.dart';
import '../../picture/edit_picture_page.dart';
import 'message.dart';

import 'constants.dart';
import 'chat_message.dart';

//TODO: Fix synchronization issue with keyboard
class Body extends StatefulWidget {
  final String chatRoomId;
  final ChatRoom chatRoom;
  final bool isUpdate;
  const Body(
      {Key? key,
      required this.chatRoomId,
      required this.chatRoom,
      required this.isUpdate})
      : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  final TextEditingController controller = TextEditingController();

  final ImagePicker _imagePicker = ImagePicker();

  File? uploadedImage;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: BlocBuilder<ReadMessagesBloc, ReadMessagesState>(
            builder: (BuildContext context, ReadMessagesState state) {
              return state.map(
                  initial: (_) => const SizedBox(),
                  loadFailure: (_) => const SizedBox(),
                  // ignore: always_specify_types
                  loadSuccess: (success) {
                    ChatRoom element = success.chatRoom.iter.firstWhere(
                        (ChatRoom chatRoomElem) =>
                            widget.chatRoomId ==
                            (chatRoomElem.post.id.getOrCrash() +
                                chatRoomElem.requester.username.getOrCrash()),
                        orElse: () => ChatRoom.empty());
                    if (success.chatRoom.isEmpty() ||
                        !(element.owner.userId.isValid())) {
                      return const SizedBox();
                    } else {
                      final ChatRoom elm = success.chatRoom.iter.firstWhere(
                          (ChatRoom chatRoomElem) =>
                              widget.chatRoomId ==
                              (chatRoomElem.post.id.getOrCrash() +
                                  chatRoomElem.requester.username
                                      .getOrCrash()));
                             String lastMessageTime = elm.messages
                            .getOrCrash()[elm.messages.length - 1]
                            .messageTime
                            .getOrCrash();

                        String lastMessageId = elm.messages
                            .getOrCrash()[elm.messages.length - 1]
                            .id
                            .getOrCrash();
                        String currentUserTime =
                            getUserId() != elm.owner.userId.getOrCrash()
                                ? elm.ownerTime
                                : elm.requesterTime;

                        bool update = (getUserId() != lastMessageId) &&
                            DateTime.parse(currentUserTime).compareTo(
                                    DateTime.parse(lastMessageTime)) <
                                0;

                        if (update) {
                          final String timeType = getUserId() !=
                                  elm.owner.userId.getOrCrash()
                              ? "ownerTime"
                              : "requesterTime";
                          final messageRepository = getIt<IMessageRepository>();
                          messageRepository.updateTime(
                              chatDocId: widget.chatRoomId,
                              timeType: timeType,
                              time: DateTime.now().toString());
                        }
                        
                       
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding,
                        ),
                        child: ListView.builder(
                          itemCount: elm.messages.getOrCrash().size,
                          physics: const BouncingScrollPhysics(),
                          reverse: true,
                          itemBuilder: (BuildContext context, int index) {
                            //Subtract one from the total size to compensate for index starting from 0
                            {
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

                              final String messageType = elm.messages
                                  .getOrCrash()
                                  .get(totalSize - index)
                                  .messageType;
                              final String imageUrl = getUserId() !=
                                      elm.requester.userId.getOrCrash()
                                  ? elm.requester.imageUrl.getOrCrash()
                                  : elm.owner.imageUrl.getOrCrash();

                              
                              
                                    String messageTime = elm.messages
                                        .getOrCrash()
                                        .get(totalSize - index)
                                        .messageTime
                                        .getOrCrash();

                                    String messageId = elm.messages
                                        .getOrCrash()
                                        .get(totalSize - index)
                                        .id
                                        .getOrCrash();

                                    String otherUserTime = getUserId() !=
                                            elm.owner.userId.getOrCrash()
                                        ? elm.ownerTime
                                        : elm.requesterTime;

                                    bool viewed = (getUserId() == messageId) &&
                                        DateTime.parse(otherUserTime).compareTo(
                                                DateTime.parse(messageTime)) >
                                            0;

                            
                                
                                
                              return Padding(
                                padding: uploadedImage == null &&
                                        (totalSize - index + 1) ==
                                            elm.messages.getOrCrash().size
                                    ? const EdgeInsets.only(bottom: 20.0)
                                    : const EdgeInsets.only(bottom: 0),
                                child: DisplayMessage(
                                    imageUrl: imageUrl,
                                    message: ChatMessage(
                                      text: message.getOrCrash(),
                                      messageType: messageType == "Text"
                                          ? ChatMessageType.text
                                          : ChatMessageType.image,
                                      messageStatus:viewed ? MessageStatus.viewed : MessageStatus.notViewed,
                                      isSender: getUserId() == id.getOrCrash(),
                                    )),
                              );
                            }
                          },
                        ),
                      );
                    }
                  },
                  loadingProgress: (_) => const SizedBox());
            },
          ),
        ),
        BlocProvider<CreateMessagesBloc>(
            create: (BuildContext context) => getIt<CreateMessagesBloc>()
              ..add(CreateMessagesEvents.initialized(
                  dartz.optionOf(widget.chatRoom))),
            child: BlocListener<CreateMessagesBloc, CreateMessagesState>(
                listener: (BuildContext context, CreateMessagesState state) {},
                child: BlocBuilder<CreateMessagesBloc, CreateMessagesState>(
                    buildWhen: (CreateMessagesState previous,
                            CreateMessagesState current) =>
                        previous.isSaving != current.isSaving,
                    builder: (BuildContext context, CreateMessagesState state) {
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
                            child: Column(
                              children: <Widget> [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Visibility(
                                      visible: false,
                                      child: Padding(
                                        padding: const EdgeInsets.only(right: 10),
                                        child: InkWell(
                                          onTap: () async {
                                            if (context
                                                    .read<CreateMessagesBloc>()
                                                    .state
                                                    .isSaving &&
                                                !(context
                                                    .read<CreateMessagesBloc>()
                                                    .state
                                                    .canUpdate) &&
                                                !(widget.isUpdate)) {
                                              Fluttertoast.showToast(
                                                msg: "Wait",
                                                backgroundColor: Colors.teal,
                                                fontSize: 14,
                                                gravity: ToastGravity.CENTER,
                                                textColor: Colors.white,
                                              );
                                            } else {
                                              final XFile? imageFilePicked =
                                                  await _imagePicker.pickImage(
                                                      source: ImageSource.gallery);
                                              if (imageFilePicked != null) {
                                                final File converted =
                                                    File((imageFilePicked).path);
                                                Future<void>.delayed(
                                                        const Duration())
                                                    .then((_) =>
                                                        Navigator.of(context)
                                                            .push(SlideUpAnim(
                                                                page: EditPicturePage(
                                                                    picture:
                                                                        converted)))
                                                            // ignore: always_specify_types
                                                            .then((value) {
                                                          if (value != null) {
                                                            context
                                                                .read<
                                                                    CreateMessagesBloc>()
                                                                .add(CreateMessagesEvents
                                                                    .fileChanged(
                                                                        value));
                                                            context
                                                                .read<
                                                                    CreateMessagesBloc>()
                                                                .add(CreateMessagesEvents
                                                                    .saved(
                                                                        widget
                                                                            .isUpdate,
                                                                        true));
                                                          }
                                                        }));
                                              }
                                            }
                                          },
                                          child: Icon(
                                            state.isSaving
                                                ? Icons.cloud_upload_sharp
                                                : Icons.attach_file_rounded,
                                            color: const Color.fromARGB(
                                                255, 58, 35, 189),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: TextField(
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2
                                            ?.copyWith(fontSize: 17),
                                        textAlignVertical: TextAlignVertical.bottom,
                                        controller: controller,
                                        onChanged: (String value) {
                                          context.read<CreateMessagesBloc>().add(
                                              CreateMessagesEvents.messageChanged(
                                                  value));
                                        },
                                        minLines: 1,
                                        maxLines: 5,
                                        maxLength: 200,
                                        maxLengthEnforcement:
                                            MaxLengthEnforcement.enforced,
                                        decoration: InputDecoration(
                                            hintText: 'Message',
                                            counterText: "",
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
                                                .isSaving &&
                                            !(context
                                                .read<CreateMessagesBloc>()
                                                .state
                                                .canUpdate) &&
                                            !(widget.isUpdate)) {
                                          Fluttertoast.showToast(
                                            msg: "Wait",
                                            backgroundColor:
                                                const Color(0xFF3212F1),
                                            fontSize: 14,
                                            gravity: ToastGravity.CENTER,
                                            textColor: Colors.white,
                                          );
                                        } else {
                                          if (context
                                              .read<CreateMessagesBloc>()
                                              .state
                                              .currentMessage
                                              .isNotEmpty) {
                                            controller.clear();
                                            context.read<CreateMessagesBloc>().add(
                                                CreateMessagesEvents.saved(
                                                    widget.isUpdate, false));
                                          }
                                        }
                                      },
                                      child: const Icon(
                                        Icons.send,
                                        color: Color(0xFF3212F1),
                                      ),
                                    ),
                                  ],
                                ),

                                // Container(
                                //   height: 100,
                                //   margin: const EdgeInsets.only(top:10,bottom: 5),
                                //   padding: const EdgeInsets.all(10),
                                //   decoration: BoxDecoration(
                                //      color: Colors.grey.withOpacity(0.2),
                                //      borderRadius:const BorderRadius.all(Radius.circular(20))
                                //   ),
                                //  child: Row(children:<Widget> [
                                //    Container(
                                //     height: 80,
                                //     width: 80,
                                //     alignment: Alignment.center,
                                //     decoration: const BoxDecoration(

                                //     color: Colors.grey,
                                //     borderRadius:  BorderRadius.all(Radius.circular(20))
                                //     ),
                                //     child: Text(widget.chatRoom.post.postPrice.getOrCrash(),style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                //       color: const Color(0xFF3212F1),
                                //     ),) ,
                                //    )
                                //  ]),
                                // )

                              ],
                            ),
                          ),
                        ),
                      );
                    })
                //}
                )),
      ],
    );
  }
}
