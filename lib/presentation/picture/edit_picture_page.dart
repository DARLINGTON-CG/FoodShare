import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_editor/image_editor.dart' hide ImageSource;
import 'dart:io';

class EditPicturePage extends StatefulWidget {
  final File? picture;
  const EditPicturePage({Key? key, required this.picture}) : super(key: key);
  @override
  EditPicturePageState createState() => EditPicturePageState();
}

class EditPicturePageState extends State<EditPicturePage> {
  final GlobalKey<ExtendedImageEditorState> editorKey =
      GlobalKey<ExtendedImageEditorState>();

  File? image;
  @override
  void initState() {
    super.initState();
    image = widget.picture;
  }

  void flip() {
    editorKey.currentState!.flip();
  }

  void rotate(bool right) {
    editorKey.currentState!.rotate(right: right);
  }

  Future<File?> crop(BuildContext context) async {
    final ExtendedImageEditorState state = editorKey.currentState!;
    final Rect? rect = state.getCropRect();
    final EditActionDetails? action = state.editAction;
    final double radian = action!.rotateAngle;

    final bool flipHorizontal = action.flipY;
    final bool flipVertical = action.flipX;
    final Uint8List img = state.rawImageData;

    final ImageEditorOption option = ImageEditorOption();

    option.addOption(ClipOption.fromRect(rect!));
    option.addOption(
        FlipOption(horizontal: flipHorizontal, vertical: flipVertical));
    if (action.hasRotateAngle) {
      option.addOption(RotateOption(radian.toInt()));
    }

    option.outputFormat = const OutputFormat.png();

    final Uint8List? result = await ImageEditor.editImage(
      image: img,
      imageEditorOption: option,
    );
    image?.writeAsBytesSync(result!);

    return image;
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ExtendedImage(
          image: ExtendedFileImageProvider(image!, cacheRawData: true),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          extendedImageEditorKey: editorKey,
          mode: ExtendedImageMode.editor,
          fit: BoxFit.contain,
          initEditorConfigHandler: (ExtendedImageState? state) {
            return EditorConfig(
                maxScale: 8.0,
                cropAspectRatio: 1,
                cornerColor: const Color(0xFF3212F1));
          },
        ),
      ),
      bottomSheet: BottomSheet(
          onClosing: () {},
          enableDrag: false,
          builder: (BuildContext context) {
            return Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              child: SafeArea(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('CANCEL',
                        style:
                            GoogleFonts.lato(color: Colors.red, fontSize: 13)),
                  ),
                  IconButton(
                      onPressed: flip,
                      icon: const Icon(
                        Icons.flip,
                        
                      )),
                  IconButton(
                      onPressed: () => rotate(false),
                      icon: const Icon(
                        Icons.rotate_left,
                        
                      )),
                  IconButton(
                      onPressed: () => rotate(true),
                      icon: const Icon(
                        Icons.rotate_right,
                       
                      )),
                  TextButton(
                    onPressed: () async {
                      await crop(context).then((File? image) =>  Navigator.of(context).pop(image));
                    },
                    child: Text('DONE',
                        style: GoogleFonts.lato(
                            color: const Color(0xFF3212F1), fontSize: 13)),
                  ),
                ],
              )),
            );
          }),
    );
  }
}
