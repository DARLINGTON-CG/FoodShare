import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../../application/user_data/user_data_cud/user_data_bloc.dart';
import '../../domain/user/user_data_failure.dart';
import '../../domain/utility/important_enums.dart';
import '../anim/page/slide_up.dart';
import '../anim/widgets/three_dot_indicator.dart';
import '../auth/widgets/custom_error_bar.dart';
import '../home/home_page.dart';
import '../picture/edit_picture_page.dart';
import 'widget/user_avatar.dart';
import 'widget/username_field.dart';

class UserDataPage extends StatefulWidget {
  final PageAccessType accessType;

  const UserDataPage({Key? key, required this.accessType}) : super(key: key);

  @override
  State<UserDataPage> createState() => _UserDataPageState();
}

class _UserDataPageState extends State<UserDataPage> {
  File? _userImage;

  final ImagePicker _imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserDataBloc, UserDataState>(
      listener: (BuildContext context, UserDataState state) {
        state.successOrFailure.fold(
          () {},
          // ignore: always_specify_types
          (either) {
            either.fold(
              (UserDataFailure failure) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.transparent,
                    duration: const Duration(seconds: 2),
                    elevation: 0,
                    padding: const EdgeInsets.all(16),
                    content: CustomErrorBar(
                        errorMessage: failure.map(
                            insufficientPermissions: (_) =>
                                'Insufficient permissions.',
                            notAvailable: (_) => 'Not available',
                            unexpected: (_) => 'Unexpected error occured',
                            usernameUnavailable: (_) =>
                                "Username unavailable"))));
              },
              (_) {
                if (widget.accessType == PageAccessType.pushed) {
                  Navigator.of(context).pop();
                } else {
                  Navigator.of(context)
                      .pushReplacement(SlideUpAnim(page: const HomePage()));
                }
              },
            );
          },
        );
      },
      builder: (BuildContext context, UserDataState state) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
              key: const Key('user_data_page_floating_action_key'),
              onPressed: () {
                if (_userImage == null) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      backgroundColor: Colors.transparent,
                      duration: Duration(seconds: 2),
                      elevation: 0,
                      padding: EdgeInsets.all(16),
                      content: CustomErrorBar(errorMessage: "Add an image")));
                } else {
                  BlocProvider.of<UserDataBloc>(context)
                      .add(UserDataEvents.saved(_userImage));
                }
              },
              child: state.isSaving
                  ? const Center(
                      child: ThreeDotIndicator(color: Colors.white, size: 14))
                  :const Icon(
                      Icons.arrow_forward_rounded,
                      color: Colors.white,
                    )),
          appBar: AppBar(
            title: Text('Information', style: GoogleFonts.lato(fontSize: 17)),
            centerTitle: true,
            elevation: 0.0,
          ),
          body: SafeArea(
            child: Form(
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Center(
                        child: Text(
                          'Enter your name and add a profile picture',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.lato(
                              fontSize: 14, color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    InkWell(
                        onTap: () async {
                          final XFile? imageFilePicked = await _imagePicker
                              .pickImage(source: ImageSource.gallery);
                          final File converted = File((imageFilePicked!).path);
                          Future<void>.delayed(const Duration()).then((_) =>
                              Navigator.of(context)
                                  .push(SlideUpAnim(
                                      page:
                                          EditPicturePage(picture: converted)))
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
                      child: const UsernameField(),
                    ),
                    const SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "@${state.data.username.isValid() ? state.data.username.getOrCrash() : "..."}",
                          style: GoogleFonts.lato(
                              fontSize: 14, color: const Color(0xFF3212F1)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        RichText(
                          text: TextSpan(
                              text: "By signing up you agree to the ",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(color: Colors.grey),
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
          ),
        );
      },
    );
  }
}
