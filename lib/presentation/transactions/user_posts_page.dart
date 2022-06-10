import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../application/posts/post_actor/post_actor_bloc.dart';
import '../../application/posts/user_post_watcher/user_post_watcher_bloc.dart';
import '../../domain/posts/post.dart';
import '../../domain/utility/important_enums.dart';
import '../../injector.dart';
import '../anim/widgets/three_dot_indicator.dart';
import '../home/widgets/post_item.dart';

class UserPostsPage extends StatelessWidget {
  const UserPostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.3,
          title: Text('Posts',
              style: GoogleFonts.lato(fontSize: 17, color: Colors.black)),
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.close_rounded,
                color: Colors.black,
              )),
          centerTitle: true,
        ),
        body: BlocBuilder<UserPostBloc, UserPostState>(
            builder: (BuildContext context, UserPostState state) {
          return CustomScrollView(slivers: <Widget>[
            SliverPadding(
                padding: const EdgeInsets.only(top: 10, left: 5),
                sliver: state.map(initial: (_) {
                  return SliverToBoxAdapter(child: Container());
                }, loadingProgress: (_) {
                  return const SliverFillRemaining(
                    child: Center(
                        child:
                            ThreeDotIndicator(color: Colors.black, size: 25)),
                  );
                },
                    // ignore: always_specify_types
                    loadSuccess: (state) {
                  if (state.posts.isEmpty()) {
                    return SliverToBoxAdapter(
                      child: SizedBox(
                        height: 200,
                        child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const Image(
                              width: 160,
                              height: 160,
                              image: AssetImage("assets/NoDocuments.png"),
                            ),
                            Text("No recent posts",
                                style: GoogleFonts.lato(fontSize: 15))
                          ],
                        )),
                      ),
                    );
                  } else {
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
                            return BlocProvider<PostActorBloc>(
                              create: (BuildContext context) =>
                                  getIt<PostActorBloc>(),
                              child: Builder(builder: (BuildContext context) {
                                return PostItem(
                                  post: post,
                                  postItemType: PostItemType.userPost,
                                );
                              }),
                            );
                          }
                        },
                        childCount: state.posts.size,
                      ),
                    );
                  }
                },

                    // ignore: always_specify_types
                    loadFailure: (state) {
                  return SliverFillRemaining(
                    child: Center(
                        child: Text("Error occured.....",
                            style: GoogleFonts.lato(
                                fontSize: 15,
                                color: Colors.red,
                                fontWeight: FontWeight.bold))),
                  );
                })),
          ]);
        }));
  }
}
