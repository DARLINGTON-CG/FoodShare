import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MapPageView extends StatelessWidget {
  const MapPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers:<Widget> [
        
         SliverToBoxAdapter(
        child: Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
       
        ],
      ),
    )),
      ],
    );
  }
}