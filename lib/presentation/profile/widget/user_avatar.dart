import 'dart:io';
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final File? file;

  const UserAvatar({Key? key, this.file}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      decoration: file == null
          ? BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(25),
            )
          : BoxDecoration(
              color: Colors.grey.withOpacity(0.4),
              borderRadius: BorderRadius.circular(25),
              image:
                  DecorationImage(image: FileImage(file!), fit: BoxFit.cover)),
      child: file == null
          ? Center(
              child: Icon(Icons.add_a_photo_rounded,
                  color: const Color(0xFF3212F1).withOpacity(0.5)))
          : Container(),
    );
  }
}
