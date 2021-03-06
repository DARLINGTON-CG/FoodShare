import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../application/user_data/user_data_read/user_data_read_bloc.dart';
import '../../domain/user/user_data.dart';
import '../anim/page/slide_in.dart';
import '../anim/page/slide_up.dart';
import '../notification/notification_page.dart';
import '../profile/profile_page.dart';
import 'widgets/free_tab.dart';
import 'widgets/paid_tab.dart';

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
    final List<String> tabs = <String>['Free', 'Paid'];
    return DefaultTabController(
      length: tabs.length,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar(
                actions: <Widget>[
                  Container(
                    width: 38,
                    height: 38,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Theme.of(context).iconTheme.color ==
                                    Colors.black
                                ? Colors.grey.withOpacity(0.3)
                                : Colors.black.withOpacity(0.1),
                            width: 0.5)),
                    child: IconButton(
                        onPressed: () =>
                            Navigator.of(context, rootNavigator: true)
                                .push(SlideIn(page: NotificationPage( lastMessage: "",))),
                        icon: const Icon(Icons.notifications)),
                  )
                ],
                leading: BlocBuilder<UserDataReadBloc, UserDataReadState>(
                  buildWhen:
                      (UserDataReadState previous, UserDataReadState current) =>
                          previous != current,
                  builder: (BuildContext context, UserDataReadState state) {
                    return Center(
                      child: GestureDetector(
                        onTap: () {
                        final UserData userData =  state.map(
                              initial: (_) =>UserData.empty(),
                              loadingProgress: (_) =>
                                  UserData.empty(),
                              // ignore: always_specify_types
                              loadSuccess: (success) =>
                                success.userData,
                              // ignore: always_specify_types
                              loadFailure: (failure) {
                                return UserData.empty();
                              });
                          Navigator.of(context).push(SlideUpAnim(
                              page: BlocProvider<UserDataReadBloc>.value(
                                  value: BlocProvider.of<UserDataReadBloc>(
                                      context),
                                  child: ProfilePage(
                                    userData: userData,
                                  ))));
                        },
                        child: Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                              color: state.map(
                                  initial: (_) => Colors.grey.withOpacity(0.2),
                                  loadingProgress: (_) =>
                                      Colors.blueGrey.withOpacity(0.2),
                                  // ignore: always_specify_types
                                  loadSuccess: (success) =>
                                      Colors.grey.withOpacity(0.2),
                                  // ignore: always_specify_types
                                  loadFailure: (failure) {
                                    return Colors.red.withOpacity(0.2);
                                  }),
                              //  Colors.grey.withOpacity(0.2)
                              shape: BoxShape.circle,
                              image: state.map(
                                  initial: (_) => null,
                                  loadingProgress: (_) => null,
                                  // ignore: always_specify_types
                                  loadSuccess: (success) => DecorationImage(
                                      image: CachedNetworkImageProvider(success
                                          .userData.imageUrl
                                          .getOrCrash()),
                                      fit: BoxFit.cover),
                                  loadFailure: (_) => null)),
                        ),
                      ),
                    );
                  },
                ),
                elevation: 0.5,
                title: Text(
                  "Home",
                  style: GoogleFonts.lato(fontSize: 17),
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
                      isScrollable: true,
                      indicatorColor: Theme.of(context).iconTheme.color,
                      tabs: tabs
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
          children: tabs.map((String name) {
            return name == 'Free'
                ? FreeTabWidget(name: name)
                : PaidTabWidget(name: name);
          }).toList(),
        ),
      ),
    );
  }
}
