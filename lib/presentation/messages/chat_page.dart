import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        shadowColor: Colors.grey.withOpacity(0.3),
        title: Text(
          'Glovo',
          style: GoogleFonts.lato(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
      bottomSheet: BottomSheet(
          onClosing: () {},
          elevation: 1,
          enableDrag: false,
          builder: (BuildContext context) {
            return Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      blurRadius: 10,
                      color: Colors.grey.withOpacity(0.3),
                      offset: const Offset(0, 1),
                      spreadRadius: 0.5)
                ],
              ),
              child: SafeArea(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20 * 0.75,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      const Icon(
                        Icons.sentiment_satisfied_alt_outlined,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          style: GoogleFonts.lato(
                              color: Colors.black, fontSize: 17),
                          textAlignVertical: TextAlignVertical.bottom,
                          minLines: 1,
                          maxLines: 5,
                          decoration: InputDecoration(
                              hintText: 'Type message',
                              contentPadding: const EdgeInsets.only(bottom: 0),
                              isDense: true,
                              border: InputBorder.none,
                              hintStyle: GoogleFonts.lato(
                                  color: Colors.grey, fontSize: 17)),
                          keyboardType: TextInputType.multiline,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Icon(
                        Icons.send,
                        color: Color(0xFF3212F1),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
      body: Center(
        child: Text(
          'Send first message...',
          style: GoogleFonts.lato(color: Colors.grey, fontSize: 17),
        ),
      ),
    );
  }
}
