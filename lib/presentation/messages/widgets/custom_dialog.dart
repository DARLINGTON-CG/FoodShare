import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../domain/posts/post.dart';

void showCustomDialogBox(BuildContext context, Post post) {
  showGeneralDialog(
    barrierDismissible: true,
    barrierLabel: '',
    barrierColor: Colors.black38,
    transitionDuration: const Duration(milliseconds: 500),
    pageBuilder:
        (BuildContext ctx, Animation<double> anim1, Animation<double> anim2) =>
            AlertDialog(
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 1.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      content: Container(
          height: 200,
          width: MediaQuery.of(context).size.width * 0.5,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(post.title.getOrCrash().toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        ?.copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
                const SizedBox(
                  height: 5,
                ),
                Text(post.description.getOrCrash(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(fontSize: 13, color: Colors.grey)),
                const SizedBox(
                  height: 5,
                ),
                const Divider(),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.monetization_on,
                      color: Theme.of(context).iconTheme.color,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      "${post.postPrice.getOrCrash()}\$",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          ?.copyWith(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 18,
                      width: 1,
                      margin: const EdgeInsets.symmetric(horizontal: 3),
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.timer,
                      color: Theme.of(context).iconTheme.color,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      post.pickupTime.getOrCrash(),
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          ?.copyWith(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 18,
                      width: 1,
                      margin: const EdgeInsets.symmetric(horizontal: 3),
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.numbers_rounded,
                      color: Theme.of(context).iconTheme.color,
                      size: 18,
                    ),
                    Text(
                      post.quantity.getOrCrash().toString(),
                      textAlign: TextAlign.start,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          ?.copyWith(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ])),
    ),
    transitionBuilder: (BuildContext ctx, Animation<double> anim1,
            Animation<double> anim2, Widget child) =>
        BackdropFilter(
      filter:
          ImageFilter.blur(sigmaX: 20 * anim1.value, sigmaY: 20 * anim1.value),
      child: FadeTransition(
        opacity: anim1,
        child: child,
      ),
    ),
    context: context,
  );
  // showGeneralDialog(
}
