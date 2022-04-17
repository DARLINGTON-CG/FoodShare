import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../application/auth/auth_bloc.dart';
import '../anim/page/slide_in.dart';
import '../auth/sign_in_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (BuildContext context, AuthState state) {
        state.map(
            // ignore: always_specify_types
            authenticated: (_) => {},
            // ignore: always_specify_types
            initial: (_) => {},
            unauthenticated: (_) => Navigator.pushAndRemoveUntil(
                  context,
                  SlideIn(page: const SignInPage()),
                  // ignore: always_specify_types
                  (Route route) => false,
                )
       
            );
     
      },
      child: Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(
              title: Text('Profile',
                  style: GoogleFonts.lato(fontSize: 17, color: Colors.black)),
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
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: ListTile(
                  title: Text(
                    "Payment Configuration",
                    style: GoogleFonts.lato(
                        fontSize: 14, color: const Color(0xFF3212F1)),
                  ),
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: ListTile(
                  title: Text(
                    "App Configuration",
                    style: GoogleFonts.lato(fontSize: 14, color: Colors.black),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.withOpacity(0.1)))),
                child: ListTile(
                  title: Text(
                    "Information",
                    style: GoogleFonts.lato(fontSize: 14, color: Colors.black),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.withOpacity(0.1)))),
                child: ListTile(
                  title: Text(
                    "Push Notifications",
                    style: GoogleFonts.lato(fontSize: 14, color: Colors.black),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.withOpacity(0.1)))),
                child: ListTile(
                  title: Text(
                    "Dark Mode",
                    style: GoogleFonts.lato(fontSize: 14, color: Colors.black),
                  ),
                  trailing: Text(
                    "Off",
                    style: GoogleFonts.lato(
                        fontSize: 14, color: const Color(0xFF3212F1)),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.withOpacity(0.1)))),
                child: ListTile(
                  title: Text(
                    "Delete Timer",
                    style: GoogleFonts.lato(fontSize: 14, color: Colors.black),
                  ),
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: ListTile(
                  title: Text(
                    "Account Configuration",
                    style: GoogleFonts.lato(fontSize: 14, color: Colors.black),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.withOpacity(0.1)))),
                child: ListTile(
                  title: Text(
                    "Delete Account",
                    style: GoogleFonts.lato(fontSize: 14, color: Colors.black),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.withOpacity(0.1)))),
                child: ListTile(
                  onTap: () {
                    showModalBottomSheet<void>(
                      context: context,
                      useRootNavigator: true,
                      builder: (BuildContext context) {
                        return Container(
                          height: 190,
                          color: Colors.white,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 55,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey
                                                  .withOpacity(0.1)))),
                                  child: ListTile(
                                    title: Text(
                                      "Proceed to sign out",
                                      style: GoogleFonts.lato(
                                          fontSize: 14,
                                          color: const Color(0xFF3212F1)),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 65,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey
                                                  .withOpacity(0.1)))),
                                  child: ListTile(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                      BlocProvider.of<AuthBloc>(context)
                                          .add(const AuthEvent.signedOut());
                                      Navigator.pushAndRemoveUntil(
                                        context,
                                        SlideIn(page: const SignInPage()),
                                        (Route route) => false,
                                      );
                                    },
                                    trailing: const Icon(
                                      Icons.check,
                                      color: Colors.black,
                                    ),
                                    title: Text(
                                      "Accept",
                                      style: GoogleFonts.lato(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.redAccent),
                                    ),
                                    subtitle: Text(
                                      "Log out of this device.",
                                      style: GoogleFonts.lato(fontSize: 14),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 65,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: ListTile(
                                    trailing: const Icon(
                                      Icons.close,
                                      color: Colors.black,
                                    ),
                                    title: Text(
                                      "Decline",
                                      style: GoogleFonts.lato(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green),
                                    ),
                                    subtitle: Text(
                                      "Continue to enjoy the app",
                                      style: GoogleFonts.lato(fontSize: 14),
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
                  title: Text(
                    "Sign out",
                    style: GoogleFonts.lato(fontSize: 14, color: Colors.black),
                  ),
                
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: ListTile(
                  title: Text(
                    "About",
                    style: GoogleFonts.lato(fontSize: 14, color: Colors.black),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.withOpacity(0.1)))),
                child: ListTile(
                  title: Text(
                    "Help",
                    style: GoogleFonts.lato(fontSize: 14, color: Colors.black),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.withOpacity(0.1)))),
                child: ListTile(
                  title: Text(
                    "Privacy policy",
                    style: GoogleFonts.lato(fontSize: 14, color: Colors.black),
                  ),
                ),
              ),
            ),

            // SliverFillRemaining(
            //   child: Column(children: <Widget>[
            //     ListTile(
            //         leading: Container(
            //           width: 55,
            //           height: 80,
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(20),
            //               color: const Color(0xFF119DA4)),
            //           child: const Center(
            //               child:
            //                   Icon(Icons.data_usage_sharp, color: Colors.black)),
            //         ),
            //         title: Text(
            //           'Data',
            //           style: GoogleFonts.lato(
            //               fontSize: 17,
            //               color: Colors.black,
            //               fontWeight: FontWeight.bold),
            //         ),
            //         subtitle: Text('Personal user data',
            //             style: GoogleFonts.lato(fontSize: 15))),
            //     ListTile(
            //         leading: Container(
            //           width: 55,
            //           height: 80,
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(20),
            //               color: const Color(0xFFFFC857)),
            //           child: const Center(
            //               child: Icon(Icons.face, color: Colors.black)),
            //         ),
            //         title: Text(
            //           'Friends',
            //           style: GoogleFonts.lato(
            //             fontSize: 17,
            //             color: Colors.black,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //         subtitle: Text('Friendly system users',
            //             style: GoogleFonts.lato(fontSize: 15))),
            //     ListTile(
            //         leading: Container(
            //           width: 55,
            //           height: 80,
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(20),
            //               color: const Color(0xFF98F5E1)),
            //           child: const Center(
            //               child: Icon(Icons.phone_in_talk_rounded,
            //                   color: Colors.black)),
            //         ),
            //         title: Text(
            //           'Chats',
            //           style: GoogleFonts.lato(
            //             fontSize: 17,
            //             color: Colors.black,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //         subtitle: Text('Friendly system users',
            //             style:
            //                 GoogleFonts.lato(fontSize: 15, color: Colors.grey))),
            //     ListTile(
            //         leading: Container(
            //           width: 55,
            //           height: 80,
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(20),
            //               color: const Color(0xFF89FC00)),
            //           child: const Center(
            //               child: Icon(Icons.settings, color: Colors.black)),
            //         ),
            //         onTap: () => Navigator.of(context)
            //             .push(SlideIn(page: const AccountSettingsPage())),
            //         title: Text(
            //           'Account Settings',
            //           style: GoogleFonts.lato(
            //             fontSize: 17,
            //             color: Colors.black,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //         subtitle: Text('System updates and alerts',
            //             style:
            //                 GoogleFonts.lato(fontSize: 15, color: Colors.grey))),
            //   ]),
            // )
          ],
        ),
      ),
    );
  }
}
