import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../../application/posts/post_form/post_form_bloc.dart';
import '../../application/posts/post_watcher/post_watcher_bloc.dart';
import '../../domain/core/failures.dart';
import '../../domain/posts/post_failure.dart';
import '../../injector.dart';
import '../anim/page/slide_up.dart';
import '../anim/widgets/three_dot_indicator.dart';
import '../picture/edit_picture_page.dart';
import 'widgets/circular_selector.dart';
import 'widgets/image_container.dart';
import 'widgets/input_field_and_label.dart';
import 'widgets/quantity_field.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  File? _foodImage;

  final ImagePicker _imagePicker = ImagePicker();

  double min = 7.0;
  double max = 9.0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PostFormBloc>(
      create: (BuildContext context) =>
          getIt<PostFormBloc>()..add(const PostFormEvent.initialized()),
      child: BlocConsumer<PostFormBloc, PostFormState>(
        listenWhen: (PostFormState previous, PostFormState current) =>
            previous.successOrFailure != current.successOrFailure,
        buildWhen: (PostFormState previous, PostFormState current) =>
            (previous.post.title != current.post.title) ||
            (previous.post.description != current.post.description) ||
            (previous.post.pickupTime != current.post.pickupTime) ||
            (previous.post.quantity != current.post.quantity) ||
            (previous.isSaving != current.isSaving),
        listener: (BuildContext context, PostFormState state) {
          state.successOrFailure.fold(
            () {},
            (either) {
              either.fold(
                (PostFailure failure) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(failure.map(
                    insufficientPermissions: (_) =>
                        'Insufficient permissions ❌',
                    unableToUpdate: (_) =>
                        "Couldn't update the note. Was it deleted from another device?",
                    unexpected: (_) =>
                        'Unexpected error occured, please contact support.',
                  ))));
                },
                (_) {
                  Navigator.of(context).pop();
                },
              );
            },
          );
        },
        builder: (BuildContext context, PostFormState state) {
          String regExp = r"""am|pm""";
          final String? amOrPm =
              RegExp(regExp).stringMatch(state.post.pickupTime.getOrCrash());
          final rangeValues = state.post.pickupTime.getOrCrash();
          double minSliderValue = double.tryParse(
              rangeValues.split('-')[0].split(':')[0].toString())!;
          double maxSliderValue = double.tryParse(
              rangeValues.split('-')[1].split(':')[0].toString())!;

          print(amOrPm);

          return Scaffold(
            appBar: AppBar(
              title: Text('Post Food',
                  style: GoogleFonts.lato(fontSize: 17, color: Colors.black)),
              leading: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(
                    Icons.close_rounded,
                    color: Colors.black,
                  )),
              centerTitle: true,
            ),
            floatingActionButton: FloatingActionButton(
                backgroundColor: const Color(0xFF3212F1),
                onPressed: () {
                  BlocProvider.of<PostFormBloc>(context)
                      .add(PostFormEvent.saved(_foodImage));
                },
                child: state.isSaving
                    ? const Center(
                        child: ThreeDotIndicator(color: Colors.white, size: 14))
                    : const Icon(Icons.post_add)),
            body: Form(
              autovalidateMode: AutovalidateMode.disabled,
              child:
                  ListView(physics: const BouncingScrollPhysics(), children: <
                      Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration:
                      BoxDecoration(color: Colors.blueGrey.withOpacity(0.04)),
                  child: ListTile(
                    title: Text(
                      "Add Image",
                      style:
                          GoogleFonts.lato(fontSize: 14, color: Colors.black),
                    ),
                    trailing: Text(
                      state.showErrorMessages && _foodImage == null
                          ? "Add an image"
                          : "",
                      style: GoogleFonts.lato(fontSize: 13, color: Colors.red),
                    ),
                  ),
                ),
                _foodImage == null
                    ? SizedBox(
                        height: 110,
                        child: IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () async {
                            final XFile? _imageFilePicked = await _imagePicker
                                .pickImage(source: ImageSource.gallery);
                            if (_imageFilePicked == null) return;
                            final File? _converted =
                                File((_imageFilePicked).path);
                            Future<void>.delayed(const Duration()).then((_) =>
                                Navigator.of(context)
                                    .push(SlideUpAnim(
                                        page: EditPicturePage(
                                            picture: _converted)))
                                    // ignore: always_specify_types
                                    .then((value) {
                                  setState(() {
                                    _foodImage = value;
                                  });
                                }));
                          },
                        ))
                    : Center(
                        child: ImageContainer(
                          file: _foodImage,
                        ),
                      ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration:
                      BoxDecoration(color: Colors.blueGrey.withOpacity(0.04)),
                  child: ListTile(
                    title: Text(
                      "Title",
                      style:
                          GoogleFonts.lato(fontSize: 14, color: Colors.black),
                    ),
                    trailing: Text(
                      state.showErrorMessages
                          ? BlocProvider.of<PostFormBloc>(context)
                              .state
                              .post
                              .title
                              .value
                              .fold(
                                  (ValueFailure<String> f) => f.maybeMap(
                                      empty: (_) => "Add a title",
                                      exceedingLength:
                                          (ExceedingLength<String> f) =>
                                              "This is too long",
                                      orElse: () => ""),
                                  (_) => "")
                          : "",
                      style: GoogleFonts.lato(fontSize: 13, color: Colors.red),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: InputFieldAndLabel(
                      onChangedFunc: (String value) =>
                          BlocProvider.of<PostFormBloc>(context)
                              .add(PostFormEvent.titleChanged(value)),
                      label: 'Add a title...'),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration:
                      BoxDecoration(color: Colors.blueGrey.withOpacity(0.04)),
                  child: ListTile(
                    title: Text(
                      'Description',
                      style:
                          GoogleFonts.lato(fontSize: 14, color: Colors.black),
                    ),
                    trailing: Text(
                      state.showErrorMessages
                          ? BlocProvider.of<PostFormBloc>(context)
                              .state
                              .post
                              .description
                              .value
                              .fold(
                                  (ValueFailure<String> f) => f.maybeMap(
                                      empty: (_) => "Add description",
                                      exceedingLength:
                                          (ExceedingLength<String> f) =>
                                              "This is too long",
                                      orElse: () => ""),
                                  (_) => "")
                          : "",
                      style: GoogleFonts.lato(fontSize: 13, color: Colors.red),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: InputFieldAndLabel(
                        onChangedFunc: (String value) =>
                            BlocProvider.of<PostFormBloc>(context)
                                .add(PostFormEvent.descriptionChanged(value)),
                        label: 'Describe what is being given away....')),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration:
                      BoxDecoration(color: Colors.blueGrey.withOpacity(0.04)),
                  child: ListTile(
                    title: Text(
                      'Quantity',
                      style:
                          GoogleFonts.lato(fontSize: 14, color: Colors.black),
                    ),
                  ),
                ),
                const QuantityField(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration:
                      BoxDecoration(color: Colors.blueGrey.withOpacity(0.04)),
                  child: ListTile(
                      title: Text(
                        'Pick up times',
                        style:
                            GoogleFonts.lato(fontSize: 14, color: Colors.black),
                      ),
                      trailing: TextButton(
                        onPressed: () {
                          String changedValue = amOrPm == "am" ? "pm" : "am";
                          String min =
                              minSliderValue.toString().replaceAll(".0", "");
                          String max =
                              maxSliderValue.toString().replaceAll(".0", "");
                          BlocProvider.of<PostFormBloc>(context).add(
                              PostFormEvent.pickupTimeChanged(
                                  "$min:00-$max:00 $changedValue"));
                        },
                        child: AnimatedSwitcher(
                          duration: const Duration(milliseconds: 300),
                          child: Text(
                            state.post.pickupTime.getOrCrash(), //amOrPm ?? "",
                            key: Key(amOrPm ?? ""),
                            style: GoogleFonts.lato(
                                fontSize: 12, color: const Color(0xFF3212F1)),
                          ),
                        ),
                      )),
                ),
                const SizedBox(height: 10),
                RangeSlider(
                  min: 0.0,
                  max: 12,
                  activeColor: const Color(0xFF3212F1),
                  inactiveColor: const Color(0xFF3212F1).withOpacity(0.1),
                  divisions: 12,
                  onChanged: (RangeValues values) {
                    String min = values.start.toString().replaceAll(".0", "");
                    String max = values.end.toString().replaceAll(".0", "");
                    BlocProvider.of<PostFormBloc>(context).add(
                        PostFormEvent.pickupTimeChanged(
                            "$min:00-$max:00 $amOrPm"));
                  },
                  values: RangeValues(minSliderValue, maxSliderValue),
                ),
              ]),
            ),
          );
        },
      ),
    );
  }
}
