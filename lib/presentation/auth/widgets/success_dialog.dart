import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void showSuccessDialogBox(BuildContext context, String header, String message) {
  showGeneralDialog(
      context: context,
      barrierDismissible: false,
      barrierLabel: '',
      barrierColor: Colors.grey.withOpacity(0.1),
      transitionBuilder: (BuildContext context, Animation<double> anim1, Animation<double> anim2, Widget child) {
        return ScaleTransition(
         scale: anim1,
          child: Opacity(
            opacity: anim1.value,
            child: AlertDialog(
              backgroundColor: Colors.black,
              elevation: 0.0,
              
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              content: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.5,
                  padding: const EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget> [
                        Text(header,
                            style: GoogleFonts.alegreya(
                                fontSize: 20,
                                color: const Color(0xFF3212F1),
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(message,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.alegreya(
                                fontSize: 16, color: Colors.white)),
                        const SizedBox(
                          height: 5,
                        ),
                        OutlinedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        const Color(0xFF3212F1))),
                            onPressed: () => Navigator.of(context).pop(),
                            child: Text(
                              'OK',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.alegreya(
                                  fontSize: 16, color: Colors.white),
                            ))
                      
                      ])),
            ),
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (BuildContext context, Animation<double> anim1, Animation<double> anim2) => Container());
}
