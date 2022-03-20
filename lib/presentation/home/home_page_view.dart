import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text(
            'All Activities',
            style: GoogleFonts.alegreya(fontSize: 18, color: Colors.black),
          ),
          elevation: 0.0,
          pinned: true,
          centerTitle: true,
          leading: Center(
            child: GestureDetector(
              onTap: () {}, // =>
              // Navigator.of(context).push(SlideUpAnim(page: const ProfilePage())),
              child: Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    shape: BoxShape.circle),
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () =>
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      padding: const EdgeInsets.all(10),
                      width: 240,

                      content: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
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
                icon: const Icon(Icons.notifications))
          ],
        ),
        SliverToBoxAdapter(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 52,
            padding: const EdgeInsets.all(5),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: 52,
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFFFFB20F)),
                  child: Text('Free',
                      style: GoogleFonts.alegreya(
                          color: Colors.black, fontSize: 16)),
                ),
                const SizedBox(width: 10),
                Container(
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFF8CFFDA)),
                    child: Text('Borrow',
                        style: GoogleFonts.alegreya(
                            color: Colors.black, fontSize: 16))),
                const SizedBox(width: 10),
                Container(
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFFE4FDE1)),
                    child: Text('Wanted',
                        style: GoogleFonts.alegreya(
                            color: Colors.black, fontSize: 16))),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: Container(
          margin: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
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
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              ),
            ],
          ),
        )),
        SliverToBoxAdapter(
            child: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text('Podcasts',
              style: GoogleFonts.alegreya(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFFFFFFF))),
        )),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 90,
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.2)),
                  ),
                  Expanded(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                        Text('Articulos carnaval',
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              width: 28,
                              height: 28,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  shape: BoxShape.circle),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text('Sam',
                                style: GoogleFonts.alegreya(
                                  fontSize: 16,
                                )),
                            const SizedBox(
                              width: 8,
                            ),
                            const Icon(
                              Icons.star,
                              size: 19,
                              color: Colors.amber,
                            ),
                            Text('5.0',
                                style: GoogleFonts.lato(
                                  fontSize: 13,
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            const Icon(
                              Icons.location_on,
                              size: 16,
                            ),
                            Text('3680.2km',
                                style: GoogleFonts.lato(
                                  fontSize: 13,
                                )),
                            const SizedBox(
                              width: 8,
                            ),
                            const Icon(
                              Icons.remove_red_eye_rounded,
                              size: 16,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text('104',
                                style: GoogleFonts.lato(
                                  fontSize: 13,
                                )),
                            const SizedBox(
                              width: 4,
                            ),
                            Text('Wanted',
                                style: GoogleFonts.lato(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold
                                )),
                          ],
                        ),
                      ]))
                ],
              ),
            );
          },
          childCount: 10,
        )),
      ],
    );
  }
}
