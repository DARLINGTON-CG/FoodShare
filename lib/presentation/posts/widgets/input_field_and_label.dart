
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputFieldAndLabel extends StatelessWidget {
  final String label;
  const InputFieldAndLabel({Key? key,required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
            Padding(
       padding: const EdgeInsets.only(left:8.0),
       child: Text(label,
              style: GoogleFonts.lato(fontSize: 16, color: Colors.black87,fontWeight:FontWeight.bold)),
     ),
     TextField(
      autocorrect: false,
    
     
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left:10,bottom:5),
        isCollapsed: true,
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
        errorBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.redAccent.withOpacity(0.5),
          ),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.redAccent.withOpacity(0.8),
          ),
        ),
        errorStyle: GoogleFonts.lato(fontSize: 13, color: Colors.red),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.5),
          ),
        ),
       // hintText: widget.label,
        hintStyle: GoogleFonts.alegreya(
          color: Colors.black.withOpacity(0.7),
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
       
        
      ),
    ),
      ],
    );
  }
}
