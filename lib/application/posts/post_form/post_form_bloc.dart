import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/posts/i_post_repository.dart';
import '../../../domain/posts/post_failure.dart';
import '../../../domain/posts/value_objects.dart';

import '../../../domain/posts/post.dart';

part 'post_form_bloc.freezed.dart';
part 'post_form_event.dart';
part 'post_form_state.dart';

@injectable
class PostFormBloc extends Bloc<PostFormEvent, PostFormState> {
  final IPostRepository _postRepository;

  PostFormBloc(
    this._postRepository,
  ) : super(PostFormState.initial()) {
    on<Initialized>(_onInitialized);
    on<PickupTimeChanged>(_onPickupTimeChanged);
    on<AmountChanged>(_onAmountChanged);
    on<DescriptionChanged>(_onDescriptionChanged);
    on<QuantityChanged>(_onQuantityChanged);
    on<TitleChanged>(_onTitleChanged);
    on<Saved>(_onSaved);
  }

  void _onInitialized(Initialized event, Emitter<PostFormState> emit) {
    emit(state.copyWith(post: Post.empty()));
  }

  void _onPickupTimeChanged(
      PickupTimeChanged event, Emitter<PostFormState> emit) {
    emit(state.copyWith(
        post: state.post.copyWith(pickupTime: PickupTime(event.pickupTime)),
        successOrFailure: none()));
  }

  void _onDescriptionChanged(
      DescriptionChanged event, Emitter<PostFormState> emit) {
    emit(state.copyWith(
        post: state.post
            .copyWith(description: PostDescription(event.description)),
        successOrFailure: none()));
  }

  void _onAmountChanged(AmountChanged event, Emitter<PostFormState> emit) {
    emit(state.copyWith(
        post: state.post.copyWith(postPrice: PostPrice(event.amountChanged)),
        successOrFailure: none()));
  }

  void _onQuantityChanged(QuantityChanged event, Emitter<PostFormState> emit) {
    emit(state.copyWith(
        post: state.post.copyWith(quantity: PostQuantity(event.quantity)),
        successOrFailure: none()));
  }

  void _onTitleChanged(TitleChanged event, Emitter<PostFormState> emit) {
    emit(state.copyWith(
        post: state.post.copyWith(title: PostTitle(event.title)),
        successOrFailure: none()));
  }

  void _onSaved(Saved event, Emitter<PostFormState> emit) async {
    emit(state.copyWith(isSaving: true, successOrFailure: none()));
    if (state.post.failureOption.isNone() && (event.image != null)) {
      final Either<PostFailure, Unit>? failureOrSuccess =
          await _postRepository.create(state.post, event.image!);
      emit(state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          successOrFailure: optionOf(failureOrSuccess)));
    }

    emit(state.copyWith(
        isSaving: false, showErrorMessages: true, successOrFailure: none()));
  }
}
