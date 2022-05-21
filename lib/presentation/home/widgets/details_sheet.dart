// ignore_for_file: always_specify_types

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/user.dart';
import '../../../domain/core/errors.dart';
import '../../../domain/messaging/chat_room.dart';
import '../../../domain/messaging/value_objects.dart';
import '../../../domain/posts/post.dart';
import '../../../domain/user/user_data.dart';
import '../../../injector.dart';
import '../../anim/page/slide_in.dart';
import '../../messages/chat_page.dart';

Future<void> showDetailSheet(
  BuildContext context,
  Post post,
  UserData? requester,
) async {
  return showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 230,
        padding: const EdgeInsets.all(15),
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    post.title.getOrCrash(),
                    style: GoogleFonts.lato(
                        fontSize: 16,
                        color: const Color(0xFF3212F1),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    double.tryParse(post.postPrice.getOrCrash()) == 0
                        ? "Free"
                        : post.postPrice.getOrCrash() + " \$",
                    style: GoogleFonts.lato(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(
                height: 8,
              ),
              Text(
                post.description.getOrCrash(),
                style: GoogleFonts.lato(fontSize: 13, color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  const Icon(
                    Icons.numbers_rounded,
                    size: 16,
                  ),
                  Text(post.quantity.getOrCrash().toString(),
                      style: GoogleFonts.lato(
                          fontSize: 12, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    width: 8,
                  ),
                  const Icon(
                    Icons.timer_outlined,
                    size: 14,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(post.pickupTime.getOrCrash(),
                      style: GoogleFonts.lato(
                          fontSize: 12, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    width: 8,
                  ),
                  Text("@" + post.username.getOrCrash(),
                      style: GoogleFonts.lato(
                          color: const Color(0xFF3212F1),
                          fontSize: 13,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                    final Option<LocalUser> userOption =
                        getIt<IAuthFacade>().getSignedInUser();
                    final LocalUser user = userOption
                        .getOrElse(() => throw NotAuthenticatedError());
                    if (requester == null) {
                      return;
                    } else {
                      ChatRoom chatRoom = ChatRoom(
                          chatIds: [
                            post.postUserId.getOrCrash(),
                            user.id.getOrCrash(),
                          ],
                          post: post,
                          owner: UserData(
                              username: post.username, imageUrl: post.imageUrl),
                          requester: requester,
                          messages: MessageList(const KtList.empty()));
                      Navigator.of(context).push(SlideIn(
                          page: ChatPage(
                        chatRoom: chatRoom,
                      )));
                    }
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Color(0xFF3212F1),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Text(
                        "Send a message",
                        style:
                            GoogleFonts.lato(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
