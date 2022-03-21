import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 58,
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: 58,
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFFFFB20F)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Free',
                          style: GoogleFonts.alegreya(
                              color: Colors.black, fontSize: 16)),
                      const Icon(Icons.circle, size: 5, color: Colors.green)
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 58,
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFFE4FDE1)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Paid',
                          style: GoogleFonts.alegreya(
                              color: Colors.black, fontSize: 16)),
                      const Icon(Icons.circle, size: 5, color: Colors.green)
                    ],
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(top: 10),
          sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ]))
                  ],
                ),
              );
            },
            childCount: 10,
          )),
        ),
      ],
    );
  }
}
