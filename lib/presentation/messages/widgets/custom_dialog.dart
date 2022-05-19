import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void showCustomDialogBox( BuildContext context,String header,String message) {
  showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: '',
      barrierColor: Colors.black.withOpacity(0.5),
      
      transitionBuilder: (BuildContext context, Animation<double> anim1, Animation<double> anim2, Widget child) {
        final double curvedValue = Curves.easeInOutBack.transform(anim1.value) - 1.0;
        return Transform(
          transform: Matrix4.translationValues(0.0, curvedValue * 200, 0.0),

          child: Opacity(
            opacity: anim1.value,

            child: AlertDialog(
              backgroundColor: Colors.black87,
              elevation:0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              content: Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width * 0.5,
                  padding:const EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget> [
                        Text(header,
                            style: GoogleFonts.lato(
                                fontSize: 17,
                                color:const Color(0xFF3212F1),
                                fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center
                                ),
                               const SizedBox(height: 5,),
                        Text(message,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                                fontSize: 14, color: Colors.white)),
                               const SizedBox(height: 5,),
                        Text("5:00-7:00 pm",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                                fontSize: 14, color: Colors.green)),
                               const SizedBox(height: 5,),
                        Text("Free",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                              fontWeight:FontWeight.bold,
                              
                                fontSize: 17, color:const Color(0xFF3212F1),)),

                      ])),
            ),
          ),
        );
      },
      transitionDuration:const Duration(milliseconds: 900),
      pageBuilder: (BuildContext context, Animation<double> anim1, Animation<double> anim2) => Container());
}
