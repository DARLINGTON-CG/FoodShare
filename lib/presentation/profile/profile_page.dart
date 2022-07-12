import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import '../../application/auth/auth_bloc.dart';
import '../../application/theme/theme_service.dart';
import '../../application/user_data/user_data_read/user_data_read_bloc.dart';
import '../../domain/user/user_data.dart';
import '../anim/page/slide_in.dart';
import '../auth/sign_in_page.dart';
import '../auth/widgets/custom_error_bar.dart';
import 'information_page.dart';
import 'payment_screen.dart';
import 'widget/custom_list_tile.dart';

class ProfilePage extends StatefulWidget {
  final UserData userData;
  const ProfilePage({Key? key, required this.userData}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int indexChanged = 10;

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
                ),
            serverError: (_) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  padding: EdgeInsets.all(16),
                  content: CustomErrorBar(
                    errorMessage: "Server Error",
                  )));
            });
      },
      child: Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(
              title: Text('Profile', style: GoogleFonts.lato(fontSize: 17)),
              centerTitle: true,
              elevation: 0.0,
              leading: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(
                    Icons.close_rounded,
                  )),
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 20,
                decoration:
                    BoxDecoration(color: Colors.blueGrey.withOpacity(0.04)),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 55,
                child: ListTile(

                  onTap: () => Navigator.of(context).push(SlideIn(page:const PaymentScreen() )),
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
                decoration:
                    BoxDecoration(color: Colors.blueGrey.withOpacity(0.04)),
                child: ListTile(
                  title: Text(
                    "App Configuration",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ),
            ),
            CustomListTile(
                label: "Information",
                func: () {
                  Navigator.of(context).push(SlideIn(
                      page: BlocProvider<UserDataReadBloc>.value(
                          value: BlocProvider.of<UserDataReadBloc>(context),
                          child: const InformationPage())));
                }),
            CustomListTile(
              label: "Push Notifications",
              func: () {},
              trailing: "Active",
            ),
            CustomListTile(
                label: "Dark Mode",
                trailing: Get.isDarkMode ? "On" : "Off",
                func: () async {
                  ThemeService.instance.switchThemeMode();
                }),
            //SHOW A SIDE BAR WHICH CAN BE ADJUSTED
            CustomListTile(
                label: "Delete Timer",
                trailing: "$indexChanged days",
                showListTile: false,
                func: () async {
                  showModalBottomSheet<void>(
                    context: context,
                    useRootNavigator: true,
                    enableDrag: true,
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    builder: (BuildContext context) {
                      return StatefulBuilder(
                        builder:
                            (BuildContext context, StateSetter setStateModal) =>
                                Container(
                          height: 100,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color:
                                  Get.isDarkMode ? Colors.black : Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: ListView.builder(
                              itemCount: 15,
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                  onTap: () {
                                    setStateModal(() {
                                      setState(() {
                                        indexChanged = index + 1;
                                      });
                                    });
                                  },
                                  child: Container(
                                      margin: const EdgeInsets.all(10),
                                      height: 60,
                                      width: 60,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: index + 1 == indexChanged
                                            ? const Color.fromARGB(
                                                73, 120, 62, 255)
                                            : const Color(0xFFFFAD05)
                                                .withOpacity(0.1),
                                        border: Border.all(
                                            color: index + 1 == indexChanged
                                                ? const Color.fromARGB(
                                                    255, 120, 62, 255)
                                                : const Color(0xFFFFAD05)),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text("${index + 1}",
                                          style: GoogleFonts.lato(
                                              fontWeight: FontWeight.bold,
                                              color: index + 1 == indexChanged
                                                  ? const Color.fromARGB(
                                                      255, 120, 62, 255)
                                                  : const Color(0xFFFFAD05),
                                              fontSize: 15))),
                                );
                              }),
                        ),
                      );
                    },
                  );
                }),
            SliverToBoxAdapter(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.04),
                ),
                child: ListTile(
                  title: Text(
                    "Account Configuration",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ),
            ),
            CustomListTile(
                label: "Delete Account",
                func: () {
                  showModalBottomSheet<void>(
                    context: context,
                    useRootNavigator: true,
                    enableDrag: true,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 190,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 55,
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Theme.of(context)
                                                        .iconTheme
                                                        .color ==
                                                    Colors.black
                                                ? Colors.grey.withOpacity(0.1)
                                                : Colors.black
                                                    .withOpacity(0.1)))),
                                child: ListTile(
                                  title: Text(
                                    "Critical action",
                                    style: GoogleFonts.lato(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xFF3212F1)),
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.all(10),
                                        height: 100,
                                        width: 150,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFFFAD05)
                                              .withOpacity(0.1),
                                          border: Border.all(
                                              color: const Color(0xFFFFAD05)),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: ListTile(
                                            title: Text("Nope!",
                                                style: GoogleFonts.lato(
                                                    fontWeight: FontWeight.bold,
                                                    color:
                                                        const Color(0xFFFFAD05),
                                                    fontSize: 15)),
                                            subtitle: Text(
                                                "I will give this app another try...",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1)),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        BlocProvider.of<AuthBloc>(context)
                                            .add(const AuthEvent.deleteUser());
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.all(10),
                                        height: 100,
                                        width: 150,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFED254E)
                                              .withOpacity(0.1),
                                          border: Border.all(
                                              color: const Color(0xFFED254E)),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: ListTile(
                                            title: Text("Yes, continue.",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2
                                                    ?.copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.red,
                                                        fontSize: 15)),
                                            subtitle: Text(
                                                "All data will be erased permanently",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1)),
                                      ),
                                    ),
                                  ],
                                ),
                              ))
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }),
            CustomListTile(
                label: "Sign out",
                showListTile: false,
                func: () {
                  showModalBottomSheet<void>(
                    context: context,
                    useRootNavigator: true,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 190,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 55,
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Theme.of(context)
                                                        .iconTheme
                                                        .color ==
                                                    Colors.black
                                                ? Colors.grey.withOpacity(0.1)
                                                : Colors.black
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
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Theme.of(context)
                                                        .iconTheme
                                                        .color ==
                                                    Colors.black
                                                ? Colors.grey.withOpacity(0.1)
                                                : Colors.black
                                                    .withOpacity(0.1)))),
                                child: ListTile(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                    BlocProvider.of<AuthBloc>(context)
                                        .add(const AuthEvent.signedOut());
                                    Navigator.pushAndRemoveUntil(
                                      context,
                                      SlideIn(page: const SignInPage()),
                                      // ignore: always_specify_types
                                      (Route route) => false,
                                    );
                                  },
                                  trailing: Icon(
                                    Icons.logout_rounded,
                                    color: Theme.of(context).iconTheme.color,
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
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: 65,
                                child: ListTile(
                                  onTap: () => Navigator.of(context).pop(),
                                  trailing: Icon(
                                    Icons.close,
                                    color: Theme.of(context).iconTheme.color,
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
                }),
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
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ),
            ),
            CustomListTile(label: "Help", func: () {}),
            CustomListTile(
                label: "Privacy policy", showListTile: false, func: () {}),
          ],
        ),
      ),
    );
  }
}
