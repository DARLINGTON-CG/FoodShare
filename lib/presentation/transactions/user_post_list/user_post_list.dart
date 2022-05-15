import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../application/posts/user_post_watcher/user_post_watcher_bloc.dart';
import '../../../domain/posts/post.dart';
import '../../../domain/utility/important_enums.dart';
import '../../anim/widgets/three_dot_indicator.dart';
import '../../home/widgets/post_item.dart';

class UserPostList extends StatelessWidget {
  const UserPostList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserPostBloc, UserPostState>(
        builder: (BuildContext context, UserPostState state) {
      return SliverPadding(
          padding: const EdgeInsets.only(top: 10, left: 5),
          sliver: state.map(initial: (_) {
            return SliverToBoxAdapter(child: Container());
          }, loadingProgress: (_) {
            return const SliverToBoxAdapter(

              child: SizedBox(
                height: 150,
                child: Center(
                    child: ThreeDotIndicator(color: Colors.black, size: 25)),
              ),
            );
          },
              // ignore: always_specify_types
              loadSuccess: (state) {
            if (state.posts.isEmpty()) {
              return SliverToBoxAdapter(
                child: SizedBox(
                  height: 150,
                  child: Center(
                      child: Text("No recent posts.....",
                          style: GoogleFonts.lato(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold))),
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
                      return Builder(builder: (BuildContext context) {
                        return PostItem(
                          post: post,
                          postItemType: PostItemType.userPost,
                        );
                      });
                    }
                  },
                  childCount: state.posts.size > 4 ? 4 : state.posts.size,
                ),
              );
            }
          },
              // ignore: always_specify_types
              loadFailure: (state) {
            return SliverToBoxAdapter(

              child: SizedBox(
                height: 100,
                child: Center(
                    child: Text("Error occured.....",
                        style: GoogleFonts.lato(
                            fontSize: 15,
                            color: Colors.red,
                            fontWeight: FontWeight.bold))),
              ),
            );
          }));
    });
  }
}
