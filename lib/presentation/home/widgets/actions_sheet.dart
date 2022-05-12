import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../application/posts/post_actor/post_actor_bloc.dart';
import '../../../domain/posts/post.dart';

Future<void> actionsSheet(
    BuildContext context, Post post, PostActorBloc postActorBloc) async {
  return showModalBottomSheet<void>(
    context: context,
    useRootNavigator: true,
    builder: (BuildContext context) {
      return Container(
        height: 190,
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.withOpacity(0.1)))),
                child: ListTile(
                  title: Text(
                    "Critical action",
                    style: GoogleFonts.lato(
                        fontSize: 15,
                        color: const Color(0xFF3212F1),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 65,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.withOpacity(0.1)))),
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).pop();
                    postActorBloc
                        .add(PostActorEvent.deleteActionPerformed(post));
                    // BlocProvider.of<PostActorBloc>(context)
                    //     .add(PostActorEvent.deleteActionPerformed(post));
                  },
                  trailing: const Icon(
                    Icons.delete_forever,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Delete",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.redAccent),
                  ),
                  subtitle: Text(
                    "Remove this post forever.",
                    style: GoogleFonts.lato(fontSize: 14),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 65,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: ListTile(
                  onTap: () => Navigator.of(context).pop(),
                  trailing: const Icon(
                    Icons.update_rounded,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Update",
                    style: GoogleFonts.lato(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                  subtitle: Text(
                    "Change details about this post",
                    style: GoogleFonts.lato(fontSize: 14),
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
