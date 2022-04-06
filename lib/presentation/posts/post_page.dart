import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/circular_selector.dart';
import 'widgets/input_field_and_label.dart';

class PostPage extends StatelessWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Food',
            style: GoogleFonts.lato(fontSize: 18, color: Colors.black)),
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.close_rounded,
              color: Colors.black,
            )),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: const Icon(Icons.post_add)),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child:
            ListView(physics: const BouncingScrollPhysics(), children: <Widget>[
          SizedBox(
              height: 110,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Colors.grey,
                            width: 0.5,
                            style: BorderStyle.solid)),
                    child: const Center(
                        child: Icon(Icons.camera_alt_rounded,
                            size: 30, color: Colors.grey)),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text('Please add an image',
                      style: GoogleFonts.lato(
                          fontSize: 16, color: Colors.redAccent)),
                ],
              )),
          const SizedBox(height: 25),
          const InputFieldAndLabel(label: 'Title'),
          const SizedBox(height: 20),
          const InputFieldAndLabel(label: 'Description'),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text('Quantity',
                style: GoogleFonts.lato(
                    fontSize: 16,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(vertical: 10),
              children: <Widget>[
                CircularSelector(
                    number: '1', color: Colors.grey.withOpacity(0.5)),
                CircularSelector(
                    number: '2', color: Colors.grey.withOpacity(0.5)),
                CircularSelector(
                    number: '3', color: Colors.grey.withOpacity(0.5)),
                CircularSelector(
                    number: '4', color: Colors.grey.withOpacity(0.5)),
                CircularSelector(
                    number: '5', color: Colors.grey.withOpacity(0.5)),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const InputFieldAndLabel(label: 'Pick up times'),
          const SizedBox(height: 20),
        ]),
      ),
    );
  }
}
