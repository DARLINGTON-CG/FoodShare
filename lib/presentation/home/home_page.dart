import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../application/posts/free_post_watcher/post_free_watcher_bloc.dart';
import '../../application/posts/paid_post_watcher/post_paid_watcher_bloc.dart';
import '../../application/posts/post_actor/post_actor_bloc.dart';
import '../../application/posts/user_post_watcher/user_post_watcher_bloc.dart';
import '../../application/user_data/user_data_read/user_data_read_bloc.dart';
import '../../domain/user/user_data_failure.dart';
import '../../domain/utility/important_enums.dart';
import '../anim/page/slide_in.dart';
import '../auth/widgets/custom_error_bar.dart';
import '../notification/notification_page.dart';
import '../posts/post_page.dart';
import '../../injector.dart';
import '../anim/page/slide_up.dart';
import '../map/maps_page_view.dart';
import '../messages/messages_page_view.dart';
import '../profile/profile_page.dart';
import '../profile/user_data_page.dart';
import '../transactions/transactions_page_view.dart';
import 'home_page_view.dart';
import 'widgets/nav_bar_item.dart';

/*
Verify that user data exists before  sending message.
After signing up user might quit application and come back to sign in hence check if user details is available.
Add a warning when user does not add image in user data page
Work on username regex for special characters and no spaces + no starting number


 Add null check to make sure no null exception value occurs in edit page
                    
Add dark mode.
Work on chat page functionality
Deal with big image sizes.
Add functionality for user to delete account.
Add state management functionality for navigation bar.
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
    const TransactionsPageView(),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        // ignore: always_specify_types
        providers: [
          BlocProvider<PostFreeWatcherBloc>(
              create: (BuildContext context) => getIt<PostFreeWatcherBloc>()
                ..add(const PostFreeWatcherEvent.watchAllFreeStarted())),
          BlocProvider<PostPaidWatcherBloc>(
              create: (BuildContext context) => getIt<PostPaidWatcherBloc>()
                ..add(const PostWatcherPaidEvent.watchAllPaidStarted())),
          BlocProvider<UserPostBloc>(
              create: (BuildContext context) => getIt<UserPostBloc>()
                ..add(const UserPostEvent.watchAllStarted())),
          BlocProvider<PostActorBloc>(
              create: (BuildContext context) => getIt<PostActorBloc>()),
          BlocProvider<UserDataReadBloc>(
              create: (BuildContext context) => getIt<UserDataReadBloc>()
                ..add(const UserDataReadEvents.readUserData())),
        ],
        child: MultiBlocListener(
          // ignore: always_specify_types
          listeners: [
            BlocListener<PostActorBloc, PostActorState>(
              listenWhen: (PostActorState previous, PostActorState current) =>
                  previous != current,
              listener: (BuildContext context, PostActorState state) {
                state.maybeMap(
                  deletionFailure: (DeletionFailure state) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        padding: const EdgeInsets.all(16),
                        content: CustomErrorBar(
                            errorMessage: (state.postFailure.map(
                          unexpected: (_) => 'Unexpected error occured',
                          nonExistentUser: (_) => "",
                          insufficientPermissions: (_) =>
                              'Insufficient permissions ',
                          unableToUpdate: (_) => 'Impossible error',
                        )))));
                  },
                  orElse: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.transparent,
                        duration: Duration(seconds: 2),
                        elevation: 0,
                        padding: EdgeInsets.all(16),
                        content: CustomErrorBar(
                            errorMessage: "Post deleted successfully")));
                  },
                );
              },
            ),
            BlocListener<UserDataReadBloc, UserDataReadState>(
              listenWhen:
                  (UserDataReadState previous, UserDataReadState current) =>
                      previous != current,
              listener: (BuildContext context, UserDataReadState state) {
                state.map(
                    initial: (_) => null,
                    loadingProgress: (_) => null,
                    loadSuccess: (_) => null,
                    // ignore: always_specify_types
                    loadFailure: (failure) {
                      if (failure.loadFailure ==
                          const UserDataFailure.notAvailable()) {
                        Navigator.of(context).pushReplacement(SlideIn(
                            page: const UserDataPage(
                          accessType: PageAccessType.replaced,
                        )));
                      }
                      return null;
                    });
              },
            ),
          ],
          child: Scaffold(
              key: _scaffoldKey,
              resizeToAvoidBottomInset: false,
              appBar: pageIndex == 0
                  ? null
                  : AppBar(
                      elevation: 0.5,
                      title: Text(
                        appBarTitle[pageIndex],
                        style:
                            GoogleFonts.lato(fontSize: 17, color: Colors.black),
                      ),
                      centerTitle: true,
                      leading: Builder(builder: (BuildContext context) {
                        return BlocBuilder<UserDataReadBloc, UserDataReadState>(
                          builder:
                              (BuildContext context, UserDataReadState state) {
                            return Center(
                              child: GestureDetector(
                                onTap: () => Navigator.of(context).push(
                                    SlideUpAnim(
                                        page: BlocProvider<
                                                UserDataReadBloc>.value(
                                            value: BlocProvider.of<
                                                UserDataReadBloc>(context),
                                            child: const ProfilePage()))),
                                child: Container(
                                  width: 38,
                                  height: 38,
                                  decoration: BoxDecoration(
                                      color: state.map(
                                          initial: (_) =>
                                              Colors.grey.withOpacity(0.2),
                                          loadingProgress: (_) =>
                                              Colors.blueGrey.withOpacity(0.2),
                                          // ignore: always_specify_types
                                          loadSuccess: (success) =>
                                              Colors.grey.withOpacity(0.2),
                                          loadFailure: (_) =>
                                              Colors.red.withOpacity(0.2)),
                                      shape: BoxShape.circle,
                                      image: state.map(
                                          initial: (_) => null,
                                          loadingProgress: (_) => null,
                                          // ignore: always_specify_types
                                          loadSuccess: (success) =>
                                              DecorationImage(
                                                  image:
                                                      CachedNetworkImageProvider(
                                                          success
                                                              .userData.imageUrl
                                                              .getOrCrash()),
                                                  fit: BoxFit.cover),
                                          loadFailure: (_) => null)),
                                ),
                              ),
                            );
                          },
                        );
                      }),
                      actions: <Widget>[
                        Container(
                          width: 38,
                          height: 38,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.3),
                                  width: 0.5)),
                          child: IconButton(
                              onPressed: () => Navigator.of(context,
                                      rootNavigator: true)
                                  .push(
                                      SlideIn(page: const NotificationPage())),
                              icon: const Icon(Icons.notifications)),
                        )
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
                                          "Choose a category",
                                          style: GoogleFonts.lato(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0xFF3212F1)),
                                        ),
                                      ),
                                    ),
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
                                        onTap: () {
                                          Navigator.of(context).pop();

                                          Navigator.of(context)
                                              .push(SlideUpAnim(
                                                  page: const PostPage(
                                            type: PostType.free,
                                            editedPost: null,
                                          )));
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
                                      width: MediaQuery.of(context).size.width,
                                      height: 55,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: ListTile(
                                        onTap: () {
                                          Navigator.of(context).pop();

                                          Navigator.of(context)
                                              .push(SlideUpAnim(
                                                  page: const PostPage(
                                            type: PostType.paid,
                                          )));
                                        },
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
              body: Builder(builder: (BuildContext context) {
                return _widgetOptions[pageIndex];
              })
              // Padding(
              //   padding: const EdgeInsets.only(top: 15),
              //   child:,
              // )

              ),
        ));
  }
}
