import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../anim/page/slide_in.dart';
import 'chat_page.dart';
class MessagesPageView extends StatelessWidget {
  const MessagesPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
     
      SliverAnimatedList(
        itemBuilder: (BuildContext context, int index, Animation<double> anim) {
          return ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.5),
              ),
            ),
            title: Text(
              'Glovo',
              style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Order food and enjoy the rest of your day...',
              style: GoogleFonts.alegreya(color: Colors.grey, fontSize: 15),
            ),
            onTap: () {
              Navigator.of(context).push(SlideIn(page: const ChatPage()));
            },
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('16:51',
                    style: GoogleFonts.lato(color: Colors.white, fontSize: 15)),
                Container(
                  width: 21,
                  height: 21,
                  margin: const EdgeInsets.all(4),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffe3f6fd),
                  ),
                  child: Center(
                      child: Text('12',
                          style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 11,
                          ))),
                )
              ],
            ),
          );
        },
        initialItemCount: 1,
      )
    ]);
  }
}
