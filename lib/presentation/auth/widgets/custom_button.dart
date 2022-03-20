import 'package:flutter/material.dart';
import 'package:foodshare/presentation/anim/widgets/three_dot_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String text;
  final Widget? image;
  final VoidCallback onPressed;
  final bool isSubmitting;

  const CustomButton({
    required this.color,
    required this.textColor,
    required this.text,
    required this.onPressed,
    required this.isSubmitting,
    Key? key,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: double.infinity,
        ),
        child: Container(
            padding: const EdgeInsets.symmetric(vertical: 18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: color,
            ),
            child: isSubmitting ? const ThreeDotIndicator(color: Color(0xFF3212F1),size: 15,):  Center(
                child: Text(
              text,
              style: GoogleFonts.alegreya(fontSize: 17, color: Colors.white),
            ))),
      ),
    );
  }
}
