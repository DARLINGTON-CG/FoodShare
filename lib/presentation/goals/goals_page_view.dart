import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoalsPageView extends StatelessWidget {
  const GoalsPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers:<Widget> [
         SliverAppBar(
          title: const Text('Payments'),
          elevation: 0.0,
          pinned: true,
          centerTitle: true,
          leading: Center(
            child: GestureDetector(
              onTap: (){},
              //  =>
              //     Navigator.of(context).push(SlideUp(page:const ProfilePage())),
              child: Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    shape: BoxShape.circle),
              ),
            ),
          ),
          actions:<Widget> [
            IconButton(
                onPressed: () =>
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      padding: const EdgeInsets.all(10),
                      width: 240,
                      content: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget> [
                          const Icon(Icons.cancel_rounded, color: Colors.red),
                          const SizedBox(width: 13),
                          Text('No internet connection',
                              style: GoogleFonts.alegreya(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold))
                        ],
                      ), //Container(child: Text("No internet connection\nPlease we will addres it,\n Dont fret")),
                      backgroundColor: Colors.black,
                      behavior: SnackBarBehavior.floating,
                    )),
                icon: Icon(Icons.notifications))
          ],
        ),
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