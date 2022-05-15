import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../anim/page/slide_up.dart';
import '../picture/edit_picture_page.dart';
import 'widget/user_avatar.dart';

class UserDataPage extends StatefulWidget {
  const UserDataPage({Key? key}) : super(key: key);

  @override
  State<UserDataPage> createState() => _UserDataPageState();
}

class _UserDataPageState extends State<UserDataPage> {
  File? _userImage;

  final ImagePicker _imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          key: const Key('user_data_page_floating_action_key'),
          onPressed: () {},
          child: const Icon(Icons.arrow_forward_rounded),
          backgroundColor: const Color(0xFF3212F1)),
      appBar: AppBar(
        title: Text('Information', style: GoogleFonts.lato(fontSize: 17)),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: <
            Widget>[
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Center(
              child: Text(
                'Enter your name and add a profile picture',
                textAlign: TextAlign.start,
                style: GoogleFonts.lato(fontSize: 14, color: Colors.grey),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
              onTap: () async {
                final XFile? _imageFilePicked =
                    await _imagePicker.pickImage(source: ImageSource.gallery);
                final File? _converted = File((_imageFilePicked!).path);
                Future<void>.delayed(const Duration()).then((_) =>
                    Navigator.of(context)
                        .push(SlideUpAnim(
                            page: EditPicturePage(picture: _converted)))
                        // ignore: always_specify_types
                        .then((value) {
                      setState(() {
                        _userImage = value;
                      });
                    }));
              },
              child: UserAvatar(
                file: _userImage,
              )),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.69,
            child: TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.text,
              maxLines: 1,
              maxLength: 30,
              style: GoogleFonts.lato(fontSize: 14, color: Colors.black),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.only(top: 25, left: 10, bottom: 3),
                isCollapsed: true,

                focusedBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.grey,
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
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),

                // hintText: widget.label,
                hintStyle: GoogleFonts.lato(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "@DarlingtonCg",
                style: GoogleFonts.lato(
                    fontSize: 14, color: const Color(0xFF3212F1)),
              ),
              const SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(
                    text: "By signing up you agree to the ",
                    style:
                        GoogleFonts.lato(fontSize: 14, color: Colors.black54),
                    children: <InlineSpan>[
                      TextSpan(
                          text: "terms of service.",
                          style: GoogleFonts.lato(
                            color: const Color(0xFF3212F1),
                          ))
                    ]),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
