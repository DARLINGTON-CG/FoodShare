import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void showSuccessDialogBox(BuildContext context, String header, String message) {
  showGeneralDialog(
    barrierDismissible: false,
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
                Text(header,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        ?.copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
                const SizedBox(
                  height: 5,
                ),
                Text(message,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(fontSize: 13, color: Colors.grey)),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  splashColor: Colors.transparent,
                  child: Container(
                    padding: const EdgeInsets.all(14),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFF3212F1).withOpacity(0.3),
                        border: Border.all(color: const Color(0xFF3212F1))),
                    child: Icon(Icons.arrow_forward_rounded,
                        color: Theme.of(context).iconTheme.color),
                  ),
                ),
                const SizedBox(
                  height: 5,
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
}
