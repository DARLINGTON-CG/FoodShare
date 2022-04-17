import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../../application/posts/post_watcher/post_watcher_bloc.dart';
import '../../injector.dart';
import '../anim/page/slide_up.dart';
import '../picture/edit_picture_page.dart';
import 'widgets/circular_selector.dart';
import 'widgets/image_container.dart';
import 'widgets/input_field_and_label.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  File? _wallpaper;

  final ImagePicker _imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
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
          onPressed: () {},
          child: const Icon(Icons.post_add)),
      body: ListView(physics: const BouncingScrollPhysics(), children: <Widget>[
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
          decoration: BoxDecoration(color: Colors.blueGrey.withOpacity(0.04)),
          child: ListTile(
            title: Text(
              "Add Image",
              style: GoogleFonts.lato(fontSize: 14, color: Colors.black),
            ),
          ),
        ),
        _wallpaper == null
            ? SizedBox(
                height: 110,
                child: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {},
                ))
            : InkWell(
                onTap: () async {
                  final XFile? _imageFilePicked =
                      await _imagePicker.pickImage(source: ImageSource.gallery);
                  if (_imageFilePicked == null) return;
                  final File? _converted = File((_imageFilePicked).path);
                  Future<void>.delayed(const Duration()).then((_) =>
                      Navigator.of(context)
                          .push(SlideUpAnim(
                              page: EditPicturePage(picture: _converted)))
                          // ignore: always_specify_types
                          .then((value) {
                        setState(() {
                          _wallpaper = value;
                        });
                      }));
                },
                child: ImageContainer(
                  file: _wallpaper,
                )),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 55,
          decoration: BoxDecoration(color: Colors.blueGrey.withOpacity(0.04)),
          child: ListTile(
            title: Text(
              "Title",
              style: GoogleFonts.lato(fontSize: 14, color: Colors.black),
            ),
          ),
        ),
        const InputFieldAndLabel(label: 'Add a title...'),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 55,
          decoration: BoxDecoration(color: Colors.blueGrey.withOpacity(0.04)),
          child: ListTile(
            title: Text(
              'Description',
              style: GoogleFonts.lato(fontSize: 14, color: Colors.black),
            ),
          ),
        ),
        const InputFieldAndLabel(
            label: 'Describe what is being given away....'),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 55,
          decoration: BoxDecoration(color: Colors.blueGrey.withOpacity(0.04)),
          child: ListTile(
            title: Text(
              'Quantity',
              style: GoogleFonts.lato(fontSize: 14, color: Colors.black),
            ),
          ),
        ),
        SizedBox(
          height: 60,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(vertical: 10),
            children: <Widget>[
              CircularSelector(
                  number: '1', color: Colors.blueGrey.withOpacity(0.1)),
              CircularSelector(
                  number: '2', color: Colors.blueGrey.withOpacity(0.1)),
              CircularSelector(
                  number: '3', color: Colors.blueGrey.withOpacity(0.1)),
              CircularSelector(
                  number: '4', color: Colors.blueGrey.withOpacity(0.1)),
              CircularSelector(
                  number: '5', color: Colors.blueGrey.withOpacity(0.1)),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 55,
          decoration: BoxDecoration(color: Colors.blueGrey.withOpacity(0.04)),
          child: ListTile(
            title: Text(
              'Pick up times',
              style: GoogleFonts.lato(fontSize: 14, color: Colors.black),
            ),
          ),
        ),
        const InputFieldAndLabel(
            label: 'What time should the person pick it up?...'),
      ]),
    );
  }
}
