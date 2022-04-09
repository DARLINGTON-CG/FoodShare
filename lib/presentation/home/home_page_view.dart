import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../anim/page/slide_in.dart';
import '../anim/page/slide_up.dart';
import '../notification/notification_page.dart';
import '../profile/profile_page.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final List<String> _tabs = <String>['Free', 'Paid'];
    return DefaultTabController(
      length: _tabs.length,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar(
                actions: <Widget>[
                  IconButton(
                      onPressed: () => Navigator.of(context)
                          .push(SlideIn(page: const NotificationPage())),
                      icon: const Icon(Icons.notifications))
                ],
                leading: Center(
                  child: GestureDetector(
                    onTap: () => Navigator.of(context)
                        .push(SlideUpAnim(page: const ProfilePage())),
                    child: Container(
                      width: 38,
                      height: 38,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          shape: BoxShape.circle),
                    ),
                  ),
                ),
                elevation: 0.0,
                title: const Text(
                  "----------------",
                ),
                pinned: true,
                centerTitle: true,
                expandedHeight: 100.0,
                floating: true,
                forceElevated: innerBoxIsScrolled,
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(48),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                      labelColor: Colors.black,
                      isScrollable: true,
                      indicatorColor: Colors.black,
                      labelStyle: GoogleFonts.lato(fontSize: 15),
                      indicatorSize: TabBarIndicatorSize.label,
                      // These are the widgets to put in each tab in the tab bar.
                      tabs: _tabs
                          .map((String name) => Tab(
                                text: name,
                              ))
                          .toList(),
                    ),
                  ),
                ),
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
                builder: (BuildContext context) {
                  return CustomScrollView(
                    physics: const BouncingScrollPhysics(),
                    key: PageStorageKey<String>(name),
                    slivers: <Widget>[
                      SliverOverlapInjector(
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
