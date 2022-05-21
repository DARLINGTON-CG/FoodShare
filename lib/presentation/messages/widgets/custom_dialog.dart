import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void showCustomDialogBox(BuildContext context, String header, String message) {
  showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: '',
      barrierColor: Colors.black.withOpacity(0.5),
      pageBuilder: (BuildContext context, Animation<double> anim1,
          Animation<double> anim2) {
        return AlertDialog(
          backgroundColor: Colors.white,
          elevation: 1.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          content: Container(
              height: 200,
              width: MediaQuery.of(context).size.width * 0.5,
              padding: const EdgeInsets.all(10),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(header.toUpperCase(),
                        style: GoogleFonts.lato(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(message,
                        textAlign: TextAlign.center,
                        style:
                            GoogleFonts.lato(fontSize: 13, color: Colors.grey)),
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
                        const Icon(
                          Icons.monetization_on,
                          color: Colors.black,
                          size: 18,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text("200\$",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                                fontSize: 12, color: Colors.black)),
                        Container(
                          height: 18,
                          width: 1,
                          margin: const EdgeInsets.symmetric(horizontal: 3),
                          color: Colors.grey,
                        ),
                        const Icon(
                          Icons.timer,
                          color: Colors.black,
                          size: 18,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text("5:00-7:00 pm",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                                fontSize: 12, color: Colors.black)),
                        Container(
                          height: 18,
                          width: 1,
                          margin: const EdgeInsets.symmetric(horizontal: 3),
                          color: Colors.grey,
                        ),
                        const Icon(
                          Icons.numbers_rounded,
                          color: Colors.black,
                          size: 18,
                        ),
                        Text("3",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.lato(
                                fontSize: 12, color: Colors.black)),
                      ],
                    ),

                    // const SizedBox(
                    //   height: 5,
                    // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   children: <Widget>[

                    //   ],

                    // ),
                    // const SizedBox(
                    //   height: 5,
                    // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   children: <Widget>[

                    //   ],

                    // ),
                  ])),
        );
      },
      transitionDuration: const Duration(milliseconds: 900),
      transitionBuilder: (BuildContext context, Animation<double> anim1,
          Animation<double> anim2, Widget child) {
        final double curvedValue = Curves.easeInOutBack.transform(anim1.value);
        return Transform.scale(
            scale: curvedValue,
            child: Opacity(
                opacity: anim1.value,
                child: BackdropFilter(
                    filter: ImageFilter.blur(
                        sigmaX: 4 * anim1.value, sigmaY: 4 * anim1.value),
                    child: FadeTransition(
                      child: child,
                      opacity: anim1,
                    ))));
      });
}
