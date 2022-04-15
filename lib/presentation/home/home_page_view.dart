import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../application/posts/post_watcher/post_watcher_bloc.dart';
import '../../domain/posts/post.dart';
import '../anim/page/slide_in.dart';
import '../anim/page/slide_up.dart';
import '../anim/widgets/three_dot_indicator.dart';
import '../notification/notification_page.dart';
import '../profile/profile_page.dart';
import 'widgets/post_item.dart';

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
    return BlocBuilder<PostWatcherBloc, PostWatcherState>(
      builder: (BuildContext context, PostWatcherState state) =>
          DefaultTabController(
        length: _tabs.length,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  actions: <Widget>[
                    IconButton(
                        onPressed: () =>
                            Navigator.of(context, rootNavigator: true)
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
                  elevation: 0.5,
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
                          handle:
                              NestedScrollView.sliverOverlapAbsorberHandleFor(
                                  context),
                        ),
                        SliverToBoxAdapter(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 1,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.4),
                            ),
                          ),
                        ),
                        SliverPadding(
                            padding: const EdgeInsets.only(top: 10),
                            sliver: state.map(initial: (_) {
                            
                              return SliverToBoxAdapter(child: Container());
                            }, loadingProgress: (_) {
                            

                              return const SliverToBoxAdapter(
                                child: Center(
                                    child:
                                        ThreeDotIndicator(color: Colors.black)),
                              );
                            },
                                // ignore: always_specify_types
                                loadSuccess: (state) {
                             
                              return SliverList(
                                delegate: SliverChildBuilderDelegate(
                                  (BuildContext context, int index) {
                                    final Post post = state.posts[index];
                                    if (post.failureOption.isSome()) {
                                      return Container(
                                        color: Colors.green,
                                        width: 100,
                                        height: 100,
                                        margin: const EdgeInsets.all(10),
                                      );
                                    } else {
                                      return Container(
                                          color: Colors.blue,
                                          margin: const EdgeInsets.all(10),
                                          width: 100,
                                          height: 100);
                                    }

                                    //  return const PostItem();
                                  },
                                  childCount: state.posts.size,
                                ),
                              );
                            },
                                // ignore: always_specify_types
                                loadFailure: (state) {
                                  
                              return SliverToBoxAdapter(
                                child: Container(
                                  color: Colors.black,
                                  width: 200,
                                  height: 200,
                                ),
                              );
                            })),
                      ],
                    );
                  },
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
