import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../application/messaging/create_messages/create_messages_bloc.dart';
import '../../domain/messaging/chat_room.dart';
import '../../injector.dart';
import 'widgets/custom_dialog.dart';

class ChatPage extends StatelessWidget {
  //final ChatRoom chatRoom;

  const ChatPage({Key? key /*, required this.chatRoom*/}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        shadowColor: Colors.grey.withOpacity(0.3),
        title: Text(
          'Ranpulstilskin',
          style: GoogleFonts.lato(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
                onPressed: () {
                  showCustomDialogBox(context, "Jollof Rice",
                      "Jollof Rice is a west african food made by the indegenous people of Ghana. It is a mixture of rice and tomato stew."  );
                },
                icon: const Icon(
                  Icons.post_add_rounded,
                  size: 25,
                )),
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
            ..add(CreateMessagesEvents.initialized(optionOf(ChatRoom.empty()))),
          child: BlocBuilder<CreateMessagesBloc, CreateMessagesState>(
              builder: (BuildContext context, CreateMessagesState state) {
            return BottomSheet(
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
                            const Icon(
                              Icons.send,
                              color: Color(0xFF3212F1),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                });
          })),
      body: Center(
        child: Text(
          'Send first message...',
          style: GoogleFonts.lato(color: Colors.grey, fontSize: 15),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:google_fonts/google_fonts.dart';

// import '../../application/messaging/read_messages/read_messages_bloc.dart';
// import '../../domain/messaging/chat_room.dart';
// import '../anim/widgets/three_dot_indicator.dart';

// import 'widgets/chat_list_item.dart';

// class MessagesPageView extends StatelessWidget {
//   const MessagesPageView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ReadMessagesBloc, ReadMessagesState>(
//         builder: (BuildContext context, ReadMessagesState state) => SafeArea(
//               top: false,
//               bottom: false,
//               child: Builder(
//                 builder: (BuildContext context) {
//                   return CustomScrollView(
//                     physics: const BouncingScrollPhysics(),
//                     key: const PageStorageKey<String>("chat_page_view_key"),
//                     slivers: <Widget>[
                  
                     
//                       SliverPadding(
//                           padding: const EdgeInsets.only(top: 10),
//                           sliver: state.map(initial: (_) {
//                             return SliverToBoxAdapter(child: Container());
//                           }, loadingProgress: (_) {
//                             return const SliverFillRemaining(
//                               child: Center(
//                                   child: ThreeDotIndicator(
//                                       color: Colors.black, size: 25)),
//                             );
//                           },
//                               // ignore: always_specify_types
//                               loadSuccess: (state) {
//                             return SliverList(
//                               delegate: SliverChildBuilderDelegate(
//                                 (BuildContext context, int index) {
//                                   final ChatRoom chat = state.chatRoom[index];
//                                   if (chat.failureOption.isSome()) {
//                                     return Container(
//                                       color: Colors.green,
//                                       width: 100,
//                                       height: 100,
//                                       margin: const EdgeInsets.all(10),
//                                     );
//                                   } else {
//                                     int indexOfLastMessage =
//                                         chat.messages.getOrCrash().size - 1;
//                                     String lastMessage = chat.messages
//                                         .getOrCrash()[indexOfLastMessage]
//                                         .message
//                                         .getOrCrash();

//                                     return ChatListItem(
//                                         title: chat.requester.username
//                                             .getOrCrash(),
//                                         lastMessage: lastMessage,
//                                         imageUrl: chat.requester.imageUrl
//                                             .getOrCrash());
//                                   }
//                                 },
//                                 childCount: state.chatRoom.size,
//                               ),
//                             );
//                           },
//                               // ignore: always_specify_types
//                               loadFailure: (state) {
//                             return SliverFillRemaining(
//                               child: Center(
//                                   child: Text("Error occured.....",
//                                       style: GoogleFonts.lato(
//                                           fontSize: 15,
//                                           color: Colors.red,
//                                           fontWeight: FontWeight.bold))),
//                             );
//                           })),
//                     ],
//                   );
//                 },
//               ),
//             ));
//   }
// }
