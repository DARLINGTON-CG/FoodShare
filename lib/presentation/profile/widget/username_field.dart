import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../application/user_data/user_data_cud/user_data_bloc.dart';
import '../../../domain/core/failures.dart';

class UsernameField extends StatefulWidget {
  const UsernameField({Key? key}) : super(key: key);

  @override
  State<UsernameField> createState() => _UsernameFieldState();
}

class _UsernameFieldState extends State<UsernameField> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();

    return BlocListener<UserDataBloc, UserDataState>(
        listenWhen: (UserDataState previous, UserDataState current) =>
            previous.isEditing != current.isEditing,
        listener: (BuildContext context, UserDataState state) {
          textEditingController.text = state.data.username.getOrCrash();
        },
        child: TextFormField(
          autocorrect: false,
          controller: textEditingController,
          maxLength: 35,
          validator: (_) => BlocProvider.of<UserDataBloc>(context)
              .state
              .data
              .username
              .value
              .fold(
                (ValueFailure<String> f) => f.maybeMap(
                  empty: (Empty<String> f) => 'Provide a username',
                  exceedingLength: (ExceedingLength<String> f) => 'Too long',
                  noSpaceOrSpecialCharac: (NoSpaceOrSpecialCharac<String> f) =>
                      'No special characters or space',
                  orElse: () => null,
                ),
                (String r) => null,
              ),
          onChanged: (String value) => BlocProvider.of<UserDataBloc>(context)
              .add(UserDataEvents.usernameChanged(value)),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 25, left: 10, bottom: 3),
            counterText: "",
            isCollapsed: true,
            focusedBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.black,
              ),
            ),
            hintText: 'Add username...',
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
