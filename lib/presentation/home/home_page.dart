import 'package:flutter/material.dart';
import 'package:foodshare/presentation/anim/page/slide_in.dart';
import 'package:foodshare/presentation/notification/notification_page.dart';
import 'package:google_fonts/google_fonts.dart';

import '../anim/page/slide_up.dart';
import '../map/maps_page_view.dart';
import '../payments/payments_page_view.dart';
import '../messages/messages_page_view.dart';
import '../profile/profile_page.dart';
import 'home_page_view.dart';
import 'widgets/nav_bar_item.dart';

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
    return Scaffold(
        key: _scaffoldKey,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            appBarTitle[pageIndex],
            style: GoogleFonts.alegreya(fontSize: 18, color: Colors.black),
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
                onPressed: () => Navigator.of(context)
                    .push(SlideIn(page: const NotificationPage())),
                icon: const Icon(Icons.notifications))
          ],
        ),
        // floatingActionButton: FloatingActionButton(
        //     onPressed: () {},
        //     backgroundColor: Colors.amberAccent,
        //     child: const Icon(Icons.more_horiz, color: Colors.white)),
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
            Container(
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
            ),
            NavBarItem(
                label: 'Map', iconName: Icons.map, isSelected: index == 3),
            NavBarItem(
                label: 'Payments',
                iconName: Icons.account_balance_wallet_rounded,
                isSelected: index == 4),
          ],
        ),
        body:  _widgetOptions[pageIndex]
        // Padding(
        //   padding: const EdgeInsets.only(top: 15),
        //   child:,
        // )
        
        );
  }
}
