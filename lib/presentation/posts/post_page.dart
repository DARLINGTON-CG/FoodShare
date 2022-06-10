import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../../application/posts/post_form/post_form_bloc.dart';
import '../../domain/core/failures.dart';
import '../../domain/posts/post.dart';
import '../../domain/posts/post_failure.dart';
import '../../domain/utility/important_enums.dart';
import '../../injector.dart';
import '../anim/page/slide_in.dart';
import '../anim/page/slide_up.dart';
import '../anim/widgets/three_dot_indicator.dart';
import '../auth/widgets/custom_error_bar.dart';
import '../picture/edit_picture_page.dart';
import '../profile/user_data_page.dart';
import 'widgets/image_container.dart';
import 'widgets/post_amount_field.dart';
import 'widgets/post_description_field.dart';
import 'widgets/quantity_field.dart';
import 'widgets/title_field.dart';

class PostPage extends StatefulWidget {
  final PostType type;
  final Post? editedPost;

  const PostPage({Key? key, required this.type, this.editedPost})
      : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  File? _foodImage;

  final ImagePicker _imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PostFormBloc>(
      create: (BuildContext context) => getIt<PostFormBloc>()
        ..add(PostFormEvent.initialized(dartz.optionOf(widget.editedPost))),
      child: BlocConsumer<PostFormBloc, PostFormState>(
        listenWhen: (PostFormState previous, PostFormState current) =>
            previous.successOrFailure != current.successOrFailure,
        buildWhen: (PostFormState previous, PostFormState current) =>
            (previous.post.title != current.post.title) ||
            (previous.post.description != current.post.description) ||
            (previous.post.pickupTime != current.post.pickupTime) ||
            (previous.post.quantity != current.post.quantity) ||
            (previous.post.postPrice != current.post.postPrice) ||
            (previous.isSaving != current.isSaving),
        listener: (BuildContext context, PostFormState state) {
          state.successOrFailure.fold(
            () {},
            // ignore: always_specify_types
            (either) {
              either.fold(
                (PostFailure failure) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.transparent,
                      duration: const Duration(seconds: 2),
                      elevation: 0,
                      padding: const EdgeInsets.all(16),
                      content: CustomErrorBar(
                          errorMessage: failure.map(
                        insufficientPermissions: (_) =>
                            'Insufficient permissions.',
                        nonExistentUser: (_) => "Add user profile",
                        unableToUpdate: (_) => "Couldn't update the note.",
                        unexpected: (_) => 'Unexpected error occured',
                      ))));

                  failure.map(
                    insufficientPermissions: (_) => null,
                    nonExistentUser: (_) {
                      Navigator.of(context).push(SlideIn(
                          page: const UserDataPage(
                        accessType: PageAccessType.pushed,
                      )));
                    },
                    unableToUpdate: (_) => null,
                    unexpected: (_) => null,
                  );
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
          final String rangeValues = state.post.pickupTime.getOrCrash();
          double minSliderValue = double.tryParse(
              rangeValues.split('-')[0].split(':')[0].toString())!;
          double maxSliderValue = double.tryParse(
              rangeValues.split('-')[1].split(':')[0].toString())!;

          return Scaffold(
            appBar: AppBar(
              title: Text('Post Food', style: GoogleFonts.lato(fontSize: 17)),
              leading: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(
                    Icons.close_rounded,
                  )),
              centerTitle: true,
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: () {
                  if (PostType.free == widget.type) {
                    BlocProvider.of<PostFormBloc>(context)
                        .add(const PostFormEvent.amountChanged('0.00'));
                  }

                  BlocProvider.of<PostFormBloc>(context)
                      .add(PostFormEvent.saved(_foodImage));
                },
                child: state.isSaving
                    ? const Center(
                        child: ThreeDotIndicator(color: Colors.white, size: 14))
                    : const Icon(
                        Icons.post_add,
                        color: Colors.white,
                      )),
            body: Form(
              autovalidateMode: AutovalidateMode.disabled,
              child:
                  ListView(physics: const BouncingScrollPhysics(), children: <
                      Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
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
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      (state.showErrorMessages && _foodImage == null) &&
                              !state.isEditing
                          ? "Add an image"
                          : "",
                      style: GoogleFonts.lato(fontSize: 13, color: Colors.red),
                    ),
                  ),
                ),
                state.isEditing && _foodImage == null
                    ? SizedBox(
                        height: 110,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Center(
                              child: Container(
                                width: 80,
                                height: 90,
                                margin: const EdgeInsets.only(right: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.withOpacity(0.2),
                                    image: DecorationImage(
                                        image: CachedNetworkImageProvider(
                                          state.post.imageUrl.getOrCrash(),
                                        ),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            IconButton(
                              onPressed: () async {
                                final XFile? imageFilePicked =
                                    await _imagePicker.pickImage(
                                        source: ImageSource.gallery);
                                if (imageFilePicked == null) return;
                                final File converted =
                                    File((imageFilePicked).path);
                                Future<void>.delayed(const Duration()).then(
                                    (_) => Navigator.of(context)
                                            .push(SlideUpAnim(
                                                page: EditPicturePage(
                                                    picture: converted)))
                                            // ignore: always_specify_types
                                            .then((value) {
                                          setState(() {
                                            _foodImage = value;
                                          });
                                        }));
                              },
                              icon: const Icon(
                                Icons.change_circle,
                                color: Color(0xFF3212F1),
                                size: 30,
                              ),
                            )
                          ],
                        ),
                      )
                    : (_foodImage == null
                        //
                        ? SizedBox(
                            height: 110,
                            child: IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () async {
                                final XFile? imageFilePicked =
                                    await _imagePicker.pickImage(
                                        source: ImageSource.gallery);
                                if (imageFilePicked == null) return;
                                final File converted =
                                    File((imageFilePicked).path);
                                Future<void>.delayed(const Duration()).then(
                                    (_) => Navigator.of(context)
                                            .push(SlideUpAnim(
                                                page: EditPicturePage(
                                                    picture: converted)))
                                            // ignore: always_specify_types
                                            .then((value) {
                                          setState(() {
                                            _foodImage = value;
                                          });
                                        }));
                              },
                            ))
                        : Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                ImageContainer(
                                  file: _foodImage,
                                ),
                                IconButton(
                                  onPressed: () async {
                                    final XFile? imageFilePicked =
                                        await _imagePicker.pickImage(
                                            source: ImageSource.gallery);
                                    if (imageFilePicked == null) return;
                                    final File converted =
                                        File((imageFilePicked).path);
                                    Future<void>.delayed(const Duration()).then(
                                        (_) => Navigator.of(context)
                                                .push(SlideUpAnim(
                                                    page: EditPicturePage(
                                                        picture: converted)))
                                                // ignore: always_specify_types
                                                .then((value) {
                                              setState(() {
                                                _foodImage = value;
                                              });
                                            }));
                                  },
                                  icon: const Icon(
                                    Icons.change_circle,
                                    color: Color(0xFF3212F1),
                                    size: 30,
                                  ),
                                )
                              ],
                            ),
                          )),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration:
                      BoxDecoration(color: Colors.blueGrey.withOpacity(0.04)),
                  child: ListTile(
                    title: Text(
                      "Title",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          ?.copyWith(fontWeight: FontWeight.bold),
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: TitleField(),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration:
                      BoxDecoration(color: Colors.blueGrey.withOpacity(0.04)),
                  child: ListTile(
                    title: Text(
                      'Description',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          ?.copyWith(fontWeight: FontWeight.bold),
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
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: PostDescriptionField()),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration:
                      BoxDecoration(color: Colors.blueGrey.withOpacity(0.04)),
                  child: ListTile(
                    title: Text(
                      'Quantity',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          ?.copyWith(fontWeight: FontWeight.bold),
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
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.copyWith(fontWeight: FontWeight.bold),
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
                Visibility(
                  visible: widget.type == PostType.paid,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    decoration:
                        BoxDecoration(color: Colors.blueGrey.withOpacity(0.04)),
                    child: ListTile(
                      title: Text(
                        'Amount \$',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      trailing: Text(
                        state.showErrorMessages
                            ? BlocProvider.of<PostFormBloc>(context)
                                .state
                                .post
                                .postPrice
                                .value
                                .fold(
                                    (ValueFailure<String> f) => f.maybeMap(
                                        empty: (_) => "Add an amount",
                                        invalidAmount: (_) => "Invalid amount",
                                        maxAmount: (_) => "Exceeds 500\$",
                                        orElse: () => ""),
                                    (_) => "")
                            : "",
                        style:
                            GoogleFonts.lato(fontSize: 13, color: Colors.red),
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: widget.type == PostType.paid,
                  child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: PostAmountField()),
                ),
                const SizedBox(height: 80),
                Container(
                  height: 10,
                )
              ]),
            ),
          );
        },
      ),
    );
  }
}
