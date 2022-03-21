import 'package:flutter/material.dart';
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
            'FoodShare',
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
            FloatingActionButton.small(
                key: const Key('create_floating_button'),
                onPressed: () {},
                child: const Icon(
                  Icons.add,
                ),
                backgroundColor: const Color(0xFF3212F1)),
            NavBarItem(
                label: 'Map', iconName: Icons.map, isSelected: index == 3),
            NavBarItem(
                label: 'Payments',
                iconName: Icons.account_balance_wallet_rounded,
                isSelected: index == 4),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: _widgetOptions[pageIndex],
        ));
  }
}
