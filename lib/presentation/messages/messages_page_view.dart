import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../application/messaging/read_messages/read_messages_bloc.dart';
import '../../domain/messaging/chat_room.dart';
import '../anim/widgets/three_dot_indicator.dart';

import 'widgets/chat_list_item.dart';

class MessagesPageView extends StatelessWidget {
  const MessagesPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadMessagesBloc, ReadMessagesState>(
        builder: (BuildContext context, ReadMessagesState state) => SafeArea(
              top: false,
              bottom: false,
              child: Builder(
                builder: (BuildContext context) {
                  return CustomScrollView(
                    physics: const BouncingScrollPhysics(),
                    key: const PageStorageKey<String>("chat_page_view_key"),
                    slivers: <Widget>[
                  
                     
                      SliverPadding(
                          padding: const EdgeInsets.only(top: 10),
                          sliver:    SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                              

                                    return const ChatListItem(
                                        title: "Ranspustilskin",
                                        lastMessage: "This english keyboard is worth a million days this type of message...",
                                        imageUrl: "https://firebasestorage.googleapis.com/v0/b/foodshare-cc295.appspot.com/o/41w2pUUDqYaDpgckpnLOKatOWA33%2F41w2pUUDqYaDpgckpnLOKatOWA33?alt=media&token=40f1eb2f-b41e-41af-a5ce-1bb489728d43");
                                  
                                },
                                childCount: 1,
                              ),
                            )),
                    ],
                  );
                },
              ),
            ));
  }
}
