import 'package:flutter/material.dart';
import 'account_settings_page.dart';
import 'package:google_fonts/google_fonts.dart';

import '../anim/page/slide_in.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Profile',
                style: GoogleFonts.lato(fontSize: 18, color: Colors.black)),
            centerTitle: true,
            elevation: 0.0,
            leading: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  Icons.close_rounded,
                  color: Colors.black,
                )),
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: const Center(
                child: CircleAvatar(backgroundColor: Colors.black38, radius: 40),
              ),
            ),
          ),
          SliverFillRemaining(
            child: Column(children: <Widget>[
              ListTile(
                  leading: Container(
                    width: 55,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF119DA4)),
                    child: const Center(
                        child:
                            Icon(Icons.data_usage_sharp, color: Colors.black)),
                  ),
                  title: Text(
                    'Data',
                    style: GoogleFonts.lato(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  subtitle: Text('Personal user data',
                      style: GoogleFonts.lato(
                          fontSize: 15))),
              ListTile(
                  leading: Container(
                    width: 55,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFFFC857)),
                    child: const Center(
                        child: Icon(Icons.face, color: Colors.black)),
                  ),
                  title: Text(
                    'Friends',
                    style: GoogleFonts.lato(
                      fontSize: 17,
                      color: Colors.black,fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text('Friendly system users',
                      style: GoogleFonts.lato(
                          fontSize: 15))),
              ListTile(
                  leading: Container(
                    width: 55,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF98F5E1)),
                    child: const Center(
                        child: Icon(Icons.phone_in_talk_rounded,
                            color: Colors.black)),
                  ),
                  title: Text(
                    'Chats',
                    style: GoogleFonts.lato(
                      fontSize: 17,
                      color: Colors.black,fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text('Friendly system users',
                      style: GoogleFonts.lato(
                          fontSize: 15, color: Colors.grey))),
              ListTile(
                  leading: Container(
                    width: 55,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF89FC00)),
                    child: const Center(
                        child: Icon(Icons.settings, color: Colors.black)),
                  ),
                   onTap: () => Navigator.of(context).push(SlideIn(page: const AccountSettingsPage())),
                  title: Text(
                    'Account Settings',
                    style: GoogleFonts.lato(
                      fontSize: 17,
                      color: Colors.black,fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text('System updates and alerts',
                      style: GoogleFonts.lato(
                          fontSize: 15, color: Colors.grey))),
            ]),
          )
        ],
      ),
    );
  }
}
