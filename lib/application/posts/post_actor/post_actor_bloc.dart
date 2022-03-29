// import 'dart:async';
// import 'dart:developer' as developer;

// import 'package:bloc/bloc.dart';
// import 'package:foodshare/application/posts/post_actor/post_actor/index.dart';

// class PostActorBloc extends Bloc<PostActorEvent, PostActorState> {

//   PostActorBloc(PostActorState initialState) : super(initialState){
//    on<PostActorEvent>((event, emit) {
//       return emit.forEach<PostActorState>(
//         event.applyAsync(currentState: state, bloc: this),
//         onData: (state) => state,
//         onError: (error, stackTrace) {
//           developer.log('$error', name: 'PostActorBloc', error: error, stackTrace: stackTrace);
//           return ErrorPostActorState(error.toString());
//         },
//       );
//     });
//   }
// }
