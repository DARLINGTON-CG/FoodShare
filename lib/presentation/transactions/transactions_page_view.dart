import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'user_post_list/user_post_list.dart';

class TransactionsPageView extends StatelessWidget {
  const TransactionsPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics:const BouncingScrollPhysics(),
      slivers:<Widget> [
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
              trailing: Container(
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
      // child: SliverPadding(
      //     padding: const EdgeInsets.only(top: 8.0, left: 10, right: 10),

      //     child: Column(
      //       children: <Widget>[
      //         ListTile(
      //           title: Padding(
      //             padding: const EdgeInsets.only(bottom: 5.0),
      //             child: Text(
      //               'Post',
      //               style:
      //                   GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
      //             ),
      //           ),
      //           subtitle: Text(
      //             'List of all current posts',
      //             style: GoogleFonts.lato(fontSize: 14),
      //           ),
      //           trailing: Container(
      //               width: 100,
      //               height: 40,
      //               padding: const EdgeInsets.all(10),
      //               decoration: BoxDecoration(
      //                   color: const Color(0xFF3212F1),
      //                   borderRadius: BorderRadius.circular(10)),
      //               child: Center(
      //                 child: Text(
      //                   '+View all',
      //                   style: GoogleFonts.lato(fontSize: 15, color: Colors.white),
      //                 ),
      //               )),
      //         ),
      //         const SizedBox(
      //           height: 15,
      //         ),
      //         Container(
      //           height: 90,
      //           margin: const EdgeInsets.symmetric(horizontal: 10),
      //           decoration: BoxDecoration(
      //               border:
      //                   Border.all(color: const Color(0xFF3212F1).withOpacity(0.5)),
      //               borderRadius: BorderRadius.circular(8)),
      //           child: Center(
      //             child: ListTile(
      //               leading: Container(
      //                 decoration: BoxDecoration(
      //                     color: const Color(0xFF3212F1).withOpacity(0.2),
      //                     borderRadius: BorderRadius.circular(10)),
      //                 width: 60,
      //                 height: 60,
      //                 child:
      //                     Center(child: Text('Visa', style: GoogleFonts.lobster())),
      //               ),
      //               title: Padding(
      //                 padding: const EdgeInsets.only(bottom: 5.0),
      //                 child: Text(
      //                   'Visa xxx 2342',
      //                   style: GoogleFonts.lato(
      //                       fontSize: 16, fontWeight: FontWeight.bold),
      //                 ),
      //               ),
      //               subtitle: Text(
      //                 'Expires on 5/32 ',
      //                 style: GoogleFonts.lato(fontSize: 14),
      //               ),
      //               trailing: const Icon(Icons.more_horiz_rounded),
      //             ),
      //           ),
      //         ),
      //         const SizedBox(height: 10),
      //         Container(
      //           height: 90,
      //           margin: const EdgeInsets.symmetric(horizontal: 10),
      //           decoration: BoxDecoration(
      //               border:
      //                   Border.all(color: const Color(0xFF3212F1).withOpacity(0.5)),
      //               borderRadius: BorderRadius.circular(8)),
      //           child: Center(
      //             child: ListTile(
      //               leading: Container(
      //                 decoration: BoxDecoration(
      //                     color: const Color(0xFF3212F1).withOpacity(0.2),
      //                     borderRadius: BorderRadius.circular(10)),
      //                 width: 60,
      //                 height: 60,
      //                 child: Center(child: Text('M', style: GoogleFonts.lobster())),
      //               ),
      //               title: Padding(
      //                 padding: const EdgeInsets.only(bottom: 5.0),
      //                 child: Text(
      //                   'Mastercard xxx 2342',
      //                   style: GoogleFonts.lato(
      //                       fontSize: 16, fontWeight: FontWeight.bold),
      //                 ),
      //               ),
      //               subtitle: Text(
      //                 'Expires on 5/32 ',
      //                 style: GoogleFonts.lato(fontSize: 14),
      //               ),
      //               trailing: const Icon(Icons.more_horiz_rounded),
      //             ),
      //           ),
      //         ),
      //         const SizedBox(height: 10),
      //         Container(
      //           height: 90,
      //           margin: const EdgeInsets.symmetric(horizontal: 10),
      //           decoration: BoxDecoration(
      //               border:
      //                   Border.all(color: const Color(0xFF3212F1).withOpacity(0.5)),
      //               borderRadius: BorderRadius.circular(8)),
      //           child: Center(
      //             child: ListTile(
      //               leading: Container(
      //                 decoration: BoxDecoration(
      //                     color: const Color(0xFF3212F1).withOpacity(0.2),
      //                     borderRadius: BorderRadius.circular(10)),
      //                 width: 60,
      //                 height: 60,
      //                 child: Center(child: Text('M', style: GoogleFonts.lobster())),
      //               ),
      //               title: Padding(
      //                 padding: const EdgeInsets.only(bottom: 5.0),
      //                 child: Text(
      //                   'Mastercard xxx 2342',
      //                   style: GoogleFonts.lato(
      //                       fontSize: 16, fontWeight: FontWeight.bold),
      //                 ),
      //               ),
      //               subtitle: Text(
      //                 'Expires on 5/32 ',
      //                 style: GoogleFonts.lato(fontSize: 14),
      //               ),
      //               trailing: const Icon(Icons.more_horiz_rounded),
      //             ),
      //           ),
      //         ),
      //         const SizedBox(height: 10),
      //         Container(
      //           height: 90,
      //           margin: const EdgeInsets.symmetric(horizontal: 10),
      //           decoration: BoxDecoration(
      //               border:
      //                   Border.all(color: const Color(0xFF3212F1).withOpacity(0.5)),
      //               borderRadius: BorderRadius.circular(8)),
      //           child: Center(
      //             child: ListTile(
      //               leading: Container(
      //                 decoration: BoxDecoration(
      //                     color: const Color(0xFF3212F1).withOpacity(0.2),
      //                     borderRadius: BorderRadius.circular(10)),
      //                 width: 60,
      //                 height: 60,
      //                 child: Center(child: Text('M', style: GoogleFonts.lobster())),
      //               ),
      //               title: Padding(
      //                 padding: const EdgeInsets.only(bottom: 5.0),
      //                 child: Text(
      //                   'Mastercard xxx 2342',
      //                   style: GoogleFonts.lato(
      //                       fontSize: 16, fontWeight: FontWeight.bold),
      //                 ),
      //               ),
      //               subtitle: Text(
      //                 'Expires on 5/32 ',
      //                 style: GoogleFonts.lato(fontSize: 14),
      //               ),
      //               trailing: const Icon(Icons.more_horiz_rounded),
      //             ),
      //           ),
      //         ),

      //       ],
      //     ),

      // ),
    );
  }
}
