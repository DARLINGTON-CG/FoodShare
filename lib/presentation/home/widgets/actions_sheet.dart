import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../application/posts/post_actor/post_actor_bloc.dart';
import '../../../domain/posts/post.dart';
import '../../../domain/utility/important_enums.dart';
import '../../anim/page/slide_up.dart';
import '../../posts/post_page.dart';

Future<void> actionsSheet(
    BuildContext context, Post post, PostActorBloc postActorBloc) async {
  return showModalBottomSheet<void>(
    context: context,
    useRootNavigator: true,
    builder: (BuildContext context) {
      return SizedBox(
        height: 190,
      
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: BoxDecoration(
                  
                    border: Border(
                        bottom:
                            BorderSide(color: Theme.of(context).iconTheme.color == Colors.black? Colors.grey.withOpacity(0.1):Colors.black.withOpacity(0.1)))),
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
                   
                    border: Border(
                        bottom:
                            BorderSide(color:Theme.of(context).iconTheme.color == Colors.black? Colors.grey.withOpacity(0.1):Colors.black.withOpacity(0.1)))),
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).pop();
                    postActorBloc
                        .add(PostActorEvent.deleteActionPerformed(post));
                  },
                  trailing:Icon(
                    Icons.delete_forever,
                    color: Theme.of(context).iconTheme.color,
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
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 65,
               
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(SlideUpAnim(
                        page: PostPage(
                            type:
                                double.tryParse(post.postPrice.getOrCrash()) ==
                                        0.0
                                    ? PostType.free
                                    : PostType.paid,
                            editedPost: post)));
                  },
                  trailing:  Icon(
                    Icons.update_rounded,
                    color: Theme.of(context).iconTheme.color,
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
