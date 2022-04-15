import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../domain/posts/post.dart';

class PostItem extends StatelessWidget {
  final Post post;

  const PostItem({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: <Widget>[
          Container(
            width: 80,
            height: 90,
            margin: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.2),
                image: DecorationImage(
                  
                    image: CachedNetworkImageProvider(
                      post.imageUrl.getOrCrash(),
                    ),
                    fit: BoxFit.cover)),
          ),
          Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                Text(post.title.getOrCrash(),
                    style: GoogleFonts.lato(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  height: 5,
                ),
                Text(post.description.getOrCrash(),
                    style: GoogleFonts.lato(
                      fontSize: 14,
                      color: Colors.black54,
                    )),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    const Icon(
                      Icons.numbers_rounded,
                      size: 16,
                    ),
                    Text(post.quantity.getOrCrash().toString(),
                        style: GoogleFonts.lato(
                            fontSize: 13, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      width: 8,
                    ),
                    const Icon(
                      Icons.timer_outlined,
                      size: 16,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(post.pickupTime.getOrCrash(),
                        style: GoogleFonts.lato(
                            fontSize: 13, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      width: 4,
                    ),
                    Text("-- Jonh Buscon",
                        style: GoogleFonts.lato(
                            fontSize: 13, fontWeight: FontWeight.bold)),
                  ],
                ),
              ]))
        ],
      ),
    );
  }
}
