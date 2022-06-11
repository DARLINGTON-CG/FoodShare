import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../application/messaging/read_messages/read_messages_bloc.dart';
import '../../../domain/messaging/chat_room.dart';
import '../../anim/page/slide_in.dart';
import '../chat_page.dart';

class ChatListItem extends StatelessWidget {
  final String title;
  final String lastMessage;
  final String imageUrl;
  final int messageIndex;
  final ChatRoom chatRoom;
  const ChatListItem(
      {Key? key,
      required this.title,
      required this.lastMessage,
      required this.imageUrl,
      required this.chatRoom,
      required this.messageIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.withOpacity(0.5),
            image: DecorationImage(
              image: CachedNetworkImageProvider(
                imageUrl,
              ),
            ),
          )),
      title: Text(
        title,
        style: GoogleFonts.lato(
           fontSize: 15, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        lastMessage.length > 25 ? "${lastMessage.substring(0,25)}...":lastMessage ,
        style: GoogleFonts.alegreya(color: Colors.grey, fontSize: 14),
      ),
      onTap: () {
        Navigator.of(context).push(SlideIn(
          page: BlocProvider<ReadMessagesBloc>.value(
              value: BlocProvider.of<ReadMessagesBloc>(context),
              child: ChatPage(
                chatRoom: chatRoom,
                chatRoomId: chatRoom.post.id.getOrCrash() +
                    chatRoom.requester.username.getOrCrash(),
              )),
        ));
      },
      trailing: const CircleAvatar(
        radius: 5 ,
        backgroundColor:Colors.grey, //Color(0xFF3212F1),
      ),
    );
  }
}
