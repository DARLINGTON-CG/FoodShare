
import 'package:flutter/material.dart';

import '../forum/forum_page_view.dart';
import '../goals/goals_page_view.dart';
import '../messages/messages_page_view.dart';
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

  final List<Widget> _widgetOptions = <Widget> [
    const HomePageView(),
    const MessagesPageView(),
    const ForumPageView(),
    const GoalsPageView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        resizeToAvoidBottomInset: false,
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
          destinations: <Widget> [
            NavBarItem(
                label: 'Home',
                iconName: Icons.grid_view_rounded,
                isSelected: index == 0),
            NavBarItem(
                label: 'Chat',
                iconName: Icons.chat_bubble_rounded,
                isSelected: index == 1),
            FloatingActionButton.small(
                key: UniqueKey(),
                onPressed: () {},
                child: const Icon(
                  Icons.add,
                ),
                backgroundColor: const Color(0xFF3212F1)),
            NavBarItem(
                label: 'Communities',
                iconName: Icons.auto_graph_rounded,
                isSelected: index == 3),
            NavBarItem(
                label: 'Payments',
                iconName: Icons.account_balance_wallet_rounded,
                isSelected: index == 4),
          ],
        ),
        body: _widgetOptions[pageIndex]);
  }
}
