import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> _tabs = <String>['Free Food', 'Paid Food'];
    return DefaultTabController(
      length: _tabs.length, // This is the number of tabs.
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          // These are the slivers that show up in the "outer" scroll view.
          return <Widget>[
            SliverOverlapAbsorber(
              // This widget takes the overlapping behavior of the SliverAppBar,
              // and redirects it to the SliverOverlapInjector below. If it is
              // missing, then it is possible for the nested "inner" scroll view
              // below to end up under the SliverAppBar even when the inner
              // scroll view thinks it has not been scrolled.
              // This is not necessary if the "headerSliverBuilder" only builds
              // widgets that do not overlap the next sliver.
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar(
                elevation: 1.0,
                pinned: true,
                title: TabBar(
                    labelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: <Widget>[
                      Tab(
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(" Free Food ",
                                style: GoogleFonts.lato(fontSize: 15))),
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
                // This is the title in the app bar.

                // The "forceElevated" property causes the SliverAppBar to show
                // a shadow. The "innerBoxIsScrolled" parameter is true when the
                // inner scroll view is scrolled beyond its "zero" point, i.e.
                // when it appears to be scrolled below the SliverAppBar.
                // Without this, there are cases where the shadow would appear
                // or not appear inappropriately, because the SliverAppBar is
                // not actually aware of the precise position of the inner
                // scroll views.
                forceElevated: innerBoxIsScrolled,
              ),
            ),
          ];
        },
        body: TabBarView(
          // These are the contents of the tab views, below the tabs.
          children: _tabs.map((String name) {
            return SafeArea(
              top: false,
              bottom: false,
              child: Builder(
                // This Builder is needed to provide a BuildContext that is
                // "inside" the NestedScrollView, so that
                // sliverOverlapAbsorberHandleFor() can find the
                // NestedScrollView.
                builder: (BuildContext context) {
                  return CustomScrollView(
                    // The "controller" and "primary" members should be left
                    // unset, so that the NestedScrollView can control this
                    // inner scroll view.
                    // If the "controller" property is set, then this scroll
                    // view will not be associated with the NestedScrollView.
                    // The PageStorageKey should be unique to this ScrollView;
                    // it allows the list to remember its scroll position when
                    // the tab view is not on the screen.
                    physics: const BouncingScrollPhysics(),
                    key: PageStorageKey<String>(name),
                    slivers: <Widget>[
                      SliverOverlapInjector(
                        // This is the flip side of the SliverOverlapAbsorber
                        // above.
                        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                            context),
                      ),
                      SliverPadding(
                        padding: const EdgeInsets.only(top: 10),
                        sliver: SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                             return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 80,
                                      height: 90,
                                      margin: const EdgeInsets.only(right: 20),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.grey.withOpacity(0.2)),
                                    ),
                                    Expanded(
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
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
                                                    color: Colors.grey
                                                        .withOpacity(0.2),
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
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ],
                                          ),
                                        ]))
                                  ],
                                ),
                              );
                            },
                            // The childCount of the SliverChildBuilderDelegate
                            // specifies how many children this inner list
                            // has. In this example, each tab has a list of
                            // exactly 30 items, but this is arbitrary.
                            childCount: 30,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

// class HomePageView extends StatefulWidget {
//   const HomePageView({Key? key}) : super(key: key);

//   @override
//   State<HomePageView> createState() => _HomePageViewState();
// }

// class _HomePageViewState extends State<HomePageView>
//     with SingleTickerProviderStateMixin {
//   late TabController tabController;
//   @override
//   void initState() {
//     tabController = TabController(length: 2, vsync: this);

//     super.initState();
//   }

//   @override
//   void dispose() {
//     tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return NestedScrollView(
//         headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
//           return <Widget>[
//             SliverOverlapAbsorber(
//               handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
//               sliver: SliverAppBar(
//                 elevation: 1.0,
//                 pinned: true,
//                 title: TabBar(
//                     labelColor: Colors.black,
//                     indicatorSize: TabBarIndicatorSize.label,
//                     controller: tabController,
//                     tabs: <Widget>[
//                       Tab(
//                         child: Align(
//                             alignment: Alignment.center,
//                             child: Text(" Free Food ",
//                                 style: GoogleFonts.lato(fontSize: 15))),
//                       ),
//                       Tab(
//                         child: Align(
//                             alignment: Alignment.center,
//                             child: Text(
//                               " Paid Food ",
//                               style: GoogleFonts.lato(fontSize: 15),
//                             )),
//                       ),
//                     ]),
//               ),
//             ),
//           ];
//         },
//         body: TabBarView(controller: tabController, children: <Widget>[
//           CustomScrollView(
//            physics: const BouncingScrollPhysics(),
//             slivers: <Widget>[
//               SliverPadding(
//                 padding: const EdgeInsets.only(top: 10),
//                 sliver: SliverList(
//                     delegate: SliverChildBuilderDelegate(
//                   (BuildContext context, int index) {
//                     return Container(
//                       width: MediaQuery.of(context).size.width,
//                       margin: const EdgeInsets.symmetric(
//                           horizontal: 10, vertical: 10),
//                       child: Row(
//                         children: <Widget>[
//                           Container(
//                             width: 80,
//                             height: 90,
//                             margin: const EdgeInsets.only(right: 20),
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10),
//                                 color: Colors.grey.withOpacity(0.2)),
//                           ),
//                           Expanded(
//                               child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: <Widget>[
//                                 Text('Articulos carnaval',
//                                     style: GoogleFonts.lato(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.bold,
//                                     )),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 Row(
//                                   children: <Widget>[
//                                     Container(
//                                       width: 28,
//                                       height: 28,
//                                       decoration: BoxDecoration(
//                                           color: Colors.grey.withOpacity(0.2),
//                                           shape: BoxShape.circle),
//                                     ),
//                                     const SizedBox(
//                                       width: 5,
//                                     ),
//                                     Text('Sam',
//                                         style: GoogleFonts.alegreya(
//                                           fontSize: 16,
//                                         )),
//                                     const SizedBox(
//                                       width: 8,
//                                     ),
//                                     const Icon(
//                                       Icons.star,
//                                       size: 19,
//                                       color: Colors.amber,
//                                     ),
//                                     Text('5.0',
//                                         style: GoogleFonts.lato(
//                                           fontSize: 13,
//                                         )),
//                                   ],
//                                 ),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 Row(
//                                   children: <Widget>[
//                                     const Icon(
//                                       Icons.location_on,
//                                       size: 16,
//                                     ),
//                                     Text('3680.2km',
//                                         style: GoogleFonts.lato(
//                                           fontSize: 13,
//                                         )),
//                                     const SizedBox(
//                                       width: 8,
//                                     ),
//                                     const Icon(
//                                       Icons.remove_red_eye_rounded,
//                                       size: 16,
//                                     ),
//                                     const SizedBox(
//                                       width: 4,
//                                     ),
//                                     Text('104',
//                                         style: GoogleFonts.lato(
//                                           fontSize: 13,
//                                         )),
//                                     const SizedBox(
//                                       width: 4,
//                                     ),
//                                     Text('Wanted',
//                                         style: GoogleFonts.lato(
//                                             fontSize: 13,
//                                             fontWeight: FontWeight.bold)),
//                                   ],
//                                 ),
//                               ]))
//                         ],
//                       ),
//                     );
//                   },
//                   childCount: 10,
//                 )),
//               ),
//             ],
//           ),

//             CustomScrollView(
//             physics: const BouncingScrollPhysics(),
//             slivers: <Widget>[
//               SliverPadding(
//                 padding: const EdgeInsets.only(top: 10),
//                 sliver: SliverList(
//                     delegate: SliverChildBuilderDelegate(
//                   (BuildContext context, int index) {
//                     return Container(
//                       width: MediaQuery.of(context).size.width,
//                       margin: const EdgeInsets.symmetric(
//                           horizontal: 10, vertical: 10),
//                       child: Row(
//                         children: <Widget>[
//                           Container(
//                             width: 80,
//                             height: 90,
//                             margin: const EdgeInsets.only(right: 20),
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10),
//                                 color: Colors.grey.withOpacity(0.2)),
//                           ),
//                           Expanded(
//                               child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: <Widget>[
//                                 Text('ROOFIE FREE',
//                                     style: GoogleFonts.lato(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.bold,
//                                     )),
                           
                               
//                               ]))
//                         ],
//                       ),
//                     );
//                   },
//                   childCount: 10,
//                 )),
//               ),
//             ],
//           ),
//         ]));
//     // return ;
//   }
// }
