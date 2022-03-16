import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignContainer extends StatelessWidget {
  final String displayText;
  final bool isOutlined;
  final Function() onPressedCallback;
  const SignContainer({
    required this.displayText,
    required this.isOutlined,
    required this.onPressedCallback,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressedCallback,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        decoration: BoxDecoration(
            color: isOutlined ? Colors.transparent : Colors.black,
            border: isOutlined ? Border.all(color: Colors.black) : null,
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          displayText,
          style: GoogleFonts.alegreya(
              fontSize: 16, color: isOutlined ? Colors.black : Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
