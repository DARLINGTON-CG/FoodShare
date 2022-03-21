import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentsPageView extends StatelessWidget {
  const PaymentsPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers:<Widget> [
        
         SliverToBoxAdapter(
        child: Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text('Events',
                style: GoogleFonts.alegreya(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFFFFFFFF))),
          ),
          Container(
            height: 150,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          ),
        ],
      ),
    )),
      ],
    );
  }
}