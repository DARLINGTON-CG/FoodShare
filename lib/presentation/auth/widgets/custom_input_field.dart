import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants.dart';

class CustomInputField extends StatelessWidget {
  final String label;
  final IconData prefixIcon;
  final bool obscureText;

  const CustomInputField({
   
    required this.label,
    required this.prefixIcon,
    this.obscureText = false, Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      style: GoogleFonts.alegreya(fontSize: 17),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(kPaddingM),
        focusedBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.black,
                        ),
                      ),
        enabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:  BorderSide(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
        hintText: label,
        hintStyle: GoogleFonts.alegreya(
          color: kBlack.withOpacity(0.7),
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
        prefixIcon: Icon(
          prefixIcon,
          color: kBlack.withOpacity(0.65),
        ),
      ),
      obscureText: obscureText,
    );
  }
}
