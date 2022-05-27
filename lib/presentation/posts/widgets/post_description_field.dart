import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../application/posts/post_form/post_form_bloc.dart';

class PostDescriptionField extends StatefulWidget {
  const PostDescriptionField({Key? key}) : super(key: key);

  @override
  State<PostDescriptionField> createState() => _PostDescriptionFieldState();
}

class _PostDescriptionFieldState extends State<PostDescriptionField> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();

    return BlocListener<PostFormBloc, PostFormState>(
        listenWhen: (PostFormState previous, PostFormState current) =>
            previous.isEditing != current.isEditing,
        listener: (BuildContext context, PostFormState state) {
          textEditingController.text = state.post.description.getOrCrash();
        },
        child: TextFormField(
          autocorrect: false,
          controller: textEditingController,
          onChanged: (String value) => BlocProvider.of<PostFormBloc>(context)
              .add(PostFormEvent.descriptionChanged(value)),
          keyboardType: TextInputType.text,
          maxLines: 3,
          minLines: 1,
          style: GoogleFonts.lato(
            color: Colors.black,
            fontSize: 14,
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 25, left: 10, bottom: 3),
            isCollapsed: true,

            focusedBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.black,
              ),
            ),
            hintText: 'Describe what is being given away....',
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
