import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CircularSelector extends StatelessWidget {
  final String number;
  final Color color;
  const CircularSelector({Key? key, required this.number, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration:
         BoxDecoration(shape: BoxShape.circle, color: color),
      child: Center(
        child: Text(number,
            style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
