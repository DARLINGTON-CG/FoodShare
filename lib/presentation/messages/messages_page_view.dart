import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/messaging/read_messages/read_messages_bloc.dart';
import '../../domain/messaging/chat_room.dart';
import '../../domain/utility/useful_functions.dart';
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
                          sliver: state.map(initial: (_) {
                            return SliverToBoxAdapter(child: Container());
                          }, loadingProgress: (_) {
                            return const SliverFillRemaining(
                              child: Center(
                                  child: ThreeDotIndicator(
                                      color: Colors.black, size: 25)),
                            );
                          },
                              // ignore: always_specify_types
                              loadSuccess: (state) {
                            if (state.chatRoom.isEmpty()) {
                              //Replace with rive animation
                              return const SliverFillRemaining(
                                child: Center(
                                  child: Image(
                                    width: 160,
                                    height: 160,
                                    image:
                                        AssetImage("assets/NoConnection.png"),
                                  ),
                                ),
                              );
                            } else {
                              return SliverList(
                                delegate: SliverChildBuilderDelegate(
                                  (BuildContext context, int index) {
                                    final ChatRoom chat = state.chatRoom[index];
                                    if (chat.failureOption.isSome()) {
                                      return Container(
                                        color: Colors.grey.withOpacity(0.4),
                                        width: 100,
                                        height: 100,
                                        margin: const EdgeInsets.all(10),
                                      );
                                    } else {
                                      int indexOfLastMessage =
                                          chat.messages.getOrCrash().size - 1;
                                      String lastMessage = chat.messages
                                          .getOrCrash()[indexOfLastMessage]
                                          .message
                                          .getOrCrash();

                                      return ChatListItem(
                                          chatRoom: chat,
                                          title: getUserId() !=
                                                  chat.requester.userId
                                                      .getOrCrash()
                                              ? chat.requester.username
                                                  .getOrCrash()
                                              : chat.owner.username
                                                  .getOrCrash(),
                                          messageIndex: index,
                                          lastMessage: lastMessage,
                                          imageUrl: getUserId() !=
                                                  chat.requester.userId
                                                      .getOrCrash()
                                              ? chat.requester.imageUrl
                                                  .getOrCrash()
                                              : chat.owner.imageUrl
                                                  .getOrCrash());
                                    }
                                  },
                                  childCount: state.chatRoom.size,
                                ),
                              );
                            }
                          },
                              // ignore: always_specify_types
                              loadFailure: (state) {
                                //TODO: Replace with rive animation
                            return const SliverFillRemaining(
                              child: Center(
                                child: Image(
                                  width: 160,
                                  height: 160,
                                  image: AssetImage("assets/NoConnection.png"),
                                ),
                              ),
                            );
                          })),
                    ],
                  );
                },
              ),
            ));
  }
}
