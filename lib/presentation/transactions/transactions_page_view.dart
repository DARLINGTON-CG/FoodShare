import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../anim/page/slide_up.dart';
import 'user_post_list/user_post_list.dart';
import 'user_posts_page.dart';

class TransactionsPageView extends StatelessWidget {
  const TransactionsPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Container(
            margin: const EdgeInsets.only(top: 10),
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  'Post',
                  style: GoogleFonts.lato(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Text(
                'List of all current posts',
                style: GoogleFonts.lato(fontSize: 14),
              ),
              trailing: InkWell(
                onTap: () => Navigator.of(context)
                    .push(SlideUpAnim(page: const UserPostsPage())),
                child: Container(
                    width: 100,
                    height: 40,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: const Color(0xFF3212F1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        '+View all',
                        style:
                            GoogleFonts.lato(fontSize: 15, color: Colors.white),
                      ),
                    )),
              ),
            ),
          ),
        ),
        const UserPostList(),
        SliverToBoxAdapter(
          child: ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Text(
                'Transactions',
                style:
                    GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            subtitle: Text(
              'List of all transactions made ',
              style: GoogleFonts.lato(fontSize: 14),
            ),
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Center(
                child: Text(
                  'No current transactions',
                  style: GoogleFonts.lato(fontSize: 18),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
