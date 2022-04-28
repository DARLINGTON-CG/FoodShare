import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputFieldAndLabel extends StatelessWidget {
  final String label;
  final bool isDigit;

  final Function(String)? onChangedFunc;

  const InputFieldAndLabel(
      {Key? key, required this.label, required this.onChangedFunc, this.isDigit = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      onChanged: onChangedFunc,
      keyboardType: isDigit ?const TextInputType.numberWithOptions(signed: false,) : TextInputType.text,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(top: 25, left: 10, bottom: 3),
        isCollapsed: true,

        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
        hintText: label,
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
        hintStyle: GoogleFonts.lato(
          color: Colors.black.withOpacity(0.7),
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
