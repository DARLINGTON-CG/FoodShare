// import 'dart:async';
// import 'dart:developer' as developer;

// import 'package:foodshare/application/posts/post_actor/post_actor/index.dart';
// import 'package:meta/meta.dart';

// @immutable
// abstract class PostActorEvent {
//   Stream<PostActorState> applyAsync(
//       {PostActorState currentState, PostActorBloc bloc});
// }

// class UnPostActorEvent extends PostActorEvent {
//   @override
//   Stream<PostActorState> applyAsync({PostActorState? currentState, PostActorBloc? bloc}) async* {
//     yield UnPostActorState();
//   }
// }

// class LoadPostActorEvent extends PostActorEvent {
   
//   @override
//   Stream<PostActorState> applyAsync(
//       {PostActorState? currentState, PostActorBloc? bloc}) async* {
//     try {
//       yield UnPostActorState();
//       await Future.delayed(const Duration(seconds: 1));
//       yield InPostActorState('Hello world');
//     } catch (_, stackTrace) {
//       developer.log('$_', name: 'LoadPostActorEvent', error: _, stackTrace: stackTrace);
//       yield ErrorPostActorState( _.toString());
//     }
//   }
// }
