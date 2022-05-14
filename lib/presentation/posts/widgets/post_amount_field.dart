import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../application/posts/post_form/post_form_bloc.dart';

class PostAmountField extends StatefulWidget {
  const PostAmountField({Key? key}) : super(key: key);

  @override
  State<PostAmountField> createState() => _PostAmountFieldState();
}

class _PostAmountFieldState extends State<PostAmountField> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();

    return BlocListener<PostFormBloc, PostFormState>(
        listenWhen: (PostFormState previous, PostFormState current) =>
            previous.isEditing != current.isEditing,
        listener: (BuildContext context, PostFormState state) {
            textEditingController.text = state.post.postPrice.getOrCrash();
        },
        child: TextFormField(
          autocorrect: false,
          controller: textEditingController,
          toolbarOptions: const ToolbarOptions(paste: false,copy:true,cut: false,selectAll:true),
          onChanged: (String value) =>
                              BlocProvider.of<PostFormBloc>(context)
                                  .add(PostFormEvent.amountChanged(value)),            
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 25, left: 10, bottom: 3),
            isCollapsed: true,

            focusedBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.black,
              ),
            ),
            hintText:  'Max: 500.00\$',
            errorBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.redAccent.withOpacity(0.5),
              ),
            ),
            focusedErrorBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.redAccent.withOpacity(0.8),
              ),
            ),
            errorStyle: GoogleFonts.lato(fontSize: 13, color: Colors.red),
            enabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            // hintText: widget.label,
            hintStyle: GoogleFonts.lato(
              color: Colors.black.withOpacity(0.7),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ));
  }
}
