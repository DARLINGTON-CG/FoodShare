import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../anim/page/slide_in.dart';
import '../notification/notification_page.dart';
import '../posts/post_page.dart';
import '../../application/posts/post_actor/post_actor_bloc.dart';
import '../../application/posts/post_watcher/post_watcher_bloc.dart';
import '../../injector.dart';
import '../anim/page/slide_up.dart';
import '../map/maps_page_view.dart';
import '../payments/payments_page_view.dart';
import '../messages/messages_page_view.dart';
import '../profile/profile_page.dart';
import 'home_page_view.dart';
import 'widgets/nav_bar_item.dart';


/*
Last navigation bar button for user to delete and update data.
Add functionality for user to delete account.
Add paid tab.
Add dark mode.
Deal with big image sizes.
*/

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> appBarTitle = <String>[
    "All Activities",
    "Chats",
    "Maps",
    "Transactions"
  ];

  int index = 0;
  int pageIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const HomePageView(),
    const MessagesPageView(),
    const MapPageView(),
    const PaymentsPageView(),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        // ignore: always_specify_types
        providers: [
          BlocProvider<PostWatcherBloc>(
              create: (BuildContext context) => getIt<PostWatcherBloc>()
                ..add(const PostWatcherEvent.watchAllStarted())),
          BlocProvider<PostActorBloc>(
              create: (BuildContext context) => getIt<PostActorBloc>())
        ],
        child: MultiBlocListener(
            // ignore: always_specify_types
            listeners: [
              BlocListener<PostActorBloc, PostActorState>(
                listener: (BuildContext context, PostActorState state) {
                  state.maybeMap(
                      actionFailure: (PostActorState state) {}, orElse: () {});
                },
              )
            ],
            child: Scaffold(
                key: _scaffoldKey,
                resizeToAvoidBottomInset: false,
                appBar: pageIndex == 0
                    ? null
                    : AppBar(
                        elevation: 1.0,
                        title: Text(
                          appBarTitle[pageIndex],
                          style: GoogleFonts.alegreya(
                              fontSize: 18, color: Colors.black),
                        ),
                        centerTitle: true,
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
                        actions: <Widget>[
                          IconButton(
                              onPressed: () => Navigator.of(context).push(
                                  SlideIn(page: const NotificationPage())),
                              icon: const Icon(Icons.notifications))
                        ],
                      ),
                bottomNavigationBar: NavigationBar(
                  selectedIndex: index,
                  onDestinationSelected: (int selected) {
                    setState(() {
                      index = selected;
                      if (index == 0 || index == 1) {
                        pageIndex = selected;
                      } else if (index == 3 || index == 4) {
                        pageIndex = selected - 1;
                      }
                    });
                  },
                  destinations: <Widget>[
                    NavBarItem(
                        label: 'Home',
                        iconName: Icons.grid_view_rounded,
                        isSelected: index == 0),
                    NavBarItem(
                        label: 'Chat',
                        iconName: Icons.chat_bubble_rounded,
                        isSelected: index == 1),
                    InkWell(
                      highlightColor: Colors.transparent,
                        onTap: () {
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 170,
                                color: Colors.white,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 55,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Colors.grey
                                                        .withOpacity(0.1)))),
                                        child: ListTile(
                                          title: Text(
                                            "Choose a category",
                                            style: GoogleFonts.lato(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: const Color(0xFF3212F1)),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 55,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Colors.grey
                                                        .withOpacity(0.1)))),
                                        child: ListTile(
                                          onTap: () {
                                            Navigator.of(context).pop();

                                            Navigator.of(context).push(
                                                SlideUpAnim(
                                                    page: const PostPage()));
                                          },
                                          trailing: const Icon(
                                            Icons.free_breakfast_rounded,
                                            color: Colors.black,
                                          ),
                                          title: Text(
                                            "Free food",
                                            style: GoogleFonts.lato(
                                                fontSize: 14,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 55,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                        child: ListTile(
                                          trailing: const Icon(
                                            Icons.account_balance_wallet,
                                            color: Colors.black,
                                          ),
                                          title: Text(
                                            "Paid food",
                                            style: GoogleFonts.lato(
                                                fontSize: 14,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    blurRadius: 4,
                                    color: Colors.grey.withOpacity(0.4),
                                    offset: const Offset(-1, 5),
                                    spreadRadius: 0.3)
                              ],
                              color: const Color(0xFF3212F1)),
                          child: const Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        )),
                    NavBarItem(
                        label: 'Map',
                        iconName: Icons.map,
                        isSelected: index == 3),
                    NavBarItem(
                        label: 'Payments',
                        iconName: Icons.account_balance_wallet_rounded,
                        isSelected: index == 4),
                  ],
                ),
                body: _widgetOptions[pageIndex]
                // Padding(
                //   padding: const EdgeInsets.only(top: 15),
                //   child:,
                // )

                )));
  }
}
