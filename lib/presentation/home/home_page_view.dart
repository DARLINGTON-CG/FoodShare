import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> with SingleTickerProviderStateMixin {
   late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
  
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      
      slivers: <Widget>[
        SliverAppBar(
          title:  TabBar(
              labelColor:  Colors.black ,
              indicatorSize: TabBarIndicatorSize.label,
              controller: tabController,
              tabs: <Widget> [
                Tab(
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        " Free Food ",
                        style: GoogleFonts.lato(fontSize: 15)
                      )),
                ),
                Tab(
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        " Paid Food ",
                        style: GoogleFonts.lato(fontSize: 15),
                      )),
                ),
              ]),
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

