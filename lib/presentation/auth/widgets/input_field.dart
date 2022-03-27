import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants.dart';

class InputField extends StatefulWidget {
  final String label;
  final bool passwordField;
  final Function()? forgotPasswordFunc;
  final Function(String)? onChangedFunc;
  final String? Function(String?)? validator;
  final bool? hideForgot;
  const InputField({
    required this.label,
    required this.passwordField,
    required this.validator,
    this.hideForgot,
    this.forgotPasswordFunc,
    this.onChangedFunc,
    Key? key,
  }) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late bool hidden;

  @override
  void initState() {
    super.initState();
    hidden = widget.passwordField;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      onChanged: widget.onChangedFunc,
      obscureText: hidden,
      validator: widget.validator,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(kPaddingM),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.redAccent.withOpacity(0.5),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.redAccent.withOpacity(0.8),
          ),
        ),
        errorStyle: GoogleFonts.lato(fontSize: 13, color: Colors.red),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.5),
          ),
        ),
        hintText: widget.label,
        hintStyle: GoogleFonts.alegreya(
          color: kBlack.withOpacity(0.7),
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
        prefixIcon: Icon(
          widget.passwordField ? Icons.lock_rounded : Icons.person,
          color: kBlack,
        ),
        suffixIcon: widget.passwordField
            ? Wrap(
                children: <Widget>[
                  Visibility(
                    visible: widget.hideForgot != true,
                    child: TextButton(
                        onPressed: widget.forgotPasswordFunc,
                        child: Text(
                          "FORGOT",
                          style: GoogleFonts.alegreya(
                              fontSize: 15, color: const Color(0xFF0051FF)),
                        )),
                  ),
                  IconButton(
                      icon: Icon(
                        !hidden
                            ? Icons.visibility_rounded
                            : Icons.visibility_off,
                        color: Colors.blueGrey,
                        size: 18,
                      ),
                      onPressed: () {
                        setState(() {
                          hidden = !hidden;
                        });
                      }),
                ],
              )
            : null,
      ),
    );
  }
}
