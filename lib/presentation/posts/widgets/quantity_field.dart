import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/posts/post_form/post_form_bloc.dart';
import '../../../domain/posts/value_objects.dart';
import 'circular_selector.dart';

class QuantityField extends StatelessWidget {
  const QuantityField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostFormBloc, PostFormState>(
      buildWhen: (PostFormState previous, PostFormState current) =>
          previous.post.quantity != current.post.quantity,
      builder: (BuildContext context, PostFormState state) {
        return SizedBox(
          height: 60,
          child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 12);
              },
              itemBuilder: (BuildContext context, int index) {
                final int currentQuantityValue = PostQuantity.quantity[index];
                return Center(
                  child: CircularSelector(
                      number: PostQuantity.quantity[index].toString(),
                      onTapFunc: () {
                        BlocProvider.of<PostFormBloc>(context).add(
                            PostFormEvent.quantityChanged(
                                currentQuantityValue));
                      },
                      color: Colors.blueGrey.withOpacity(0.1),
                      borderColor: state.post.quantity.value.fold(
                          (_) => Colors.blueGrey.withOpacity(0.1),
                          (int quantityValue) =>
                              quantityValue == currentQuantityValue
                                  ? const Color(0xFF3212F1)
                                  : Colors.transparent)),
                );
              },
              itemCount: PostQuantity.quantity.length),
        );
      },
    );
  }
}
