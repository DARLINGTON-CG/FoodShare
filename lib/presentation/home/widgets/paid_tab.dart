import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart';

import '../../../application/posts/paid_post_watcher/post_paid_watcher_bloc.dart';
import '../../../domain/posts/post.dart';
import '../../../domain/utility/important_enums.dart';
import '../../anim/widgets/three_dot_indicator.dart';
import 'post_item.dart';

class PaidTabWidget extends StatefulWidget {
  final String name;
  const PaidTabWidget({Key? key, required this.name}) : super(key: key);

  @override
  State<PaidTabWidget> createState() => _PaidTabWidgetState();
}

class _PaidTabWidgetState extends State<PaidTabWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostPaidWatcherBloc, PostPaidWatcherState>(
        builder: (BuildContext context, PostPaidWatcherState state) => SafeArea(
              top: false,
              bottom: false,
              child: Builder(
                builder: (BuildContext context) {
                  return CustomScrollView(
                    physics: const BouncingScrollPhysics(),
                    key: PageStorageKey<String>(widget.name),
                    slivers: <Widget>[
                      SliverOverlapInjector(
                        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                            context),
                      ),
                      SliverToBoxAdapter(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 1,
                          decoration: BoxDecoration(
                              color: (Theme.of(context).iconTheme.color)! ==
                                      Colors.white
                                  ? Colors.black38.withOpacity(0.1)
                                  : Colors.grey.withOpacity(0.4)),
                        ),
                      ),
                      SliverPadding(
                          padding: const EdgeInsets.only(top: 10),
                          sliver: state.map(initial: (_) {
                            return SliverToBoxAdapter(child: Container());
                          }, loadingProgress: (_) {
                            return const SliverFillRemaining(
                              child: Center(
                                  child: ThreeDotIndicator(
                                      color: Colors.black, size: 25)),
                            );
                          },
                              // ignore: always_specify_types
                              loadSuccess: (state) {
                            if (state.posts.isEmpty()) {
                              return const SliverFillRemaining(
                                child: Center(
                                  child: RiveAnimation.asset(
                                    'assets/document_icon.riv',
                                  ),
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
                                      return PostItem(
                                        post: post,
                                        postItemType: PostItemType.externalPost,
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
                                //TODO: Replace with rive animation
                            return   SliverFillRemaining(
                              child: Center(
                                child: Text("An error occured",style: Theme.of(context).textTheme.bodyText2),
                              ),
                            );
                          })),
                    ],
                  );
                },
              ),
            ));
  }
}
