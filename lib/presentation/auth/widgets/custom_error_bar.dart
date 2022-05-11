import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomErrorBar extends StatelessWidget {
  final String errorMessage;
  const CustomErrorBar({Key? key,required this.errorMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget> [
        Container(
            height: 50,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xFFC72C41)),
            child: Row(
              children: <Widget>[
                const SizedBox(
                  width: 58,
                ),
                Text(
                  errorMessage,
                  style: GoogleFonts.lato(fontSize: 14, color: Colors.white),
                ),
              ],
            )),
        Positioned(
          bottom: 0,
          child: ClipRRect(
            borderRadius:
                const BorderRadius.only(bottomLeft: Radius.circular(10)),
            child: SvgPicture.asset("assets/bubbles.svg",
                height: 48, width: 40, color: const Color(0xFF801336)),
          ),
        ),
       
      ],
    );
  }
}
