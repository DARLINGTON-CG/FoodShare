import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountSettingsPage extends StatelessWidget {
  const AccountSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Settings',
            style: GoogleFonts.lato(fontSize: 18, color: Colors.black)),
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.close_rounded,
              color: Colors.black,
            )),
        centerTitle: true,
      ),
      body: Column(children: <Widget>[
        ListTile(
            leading: Container(
              width: 55,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(157, 164, 46, 17)),
              child: const Center(
                  child: Icon(Icons.data_usage_sharp, color: Colors.black)),
            ),
            title: Text(
              'Reset Password',
              style: GoogleFonts.lato(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Change your current password to a different one.',
                style: GoogleFonts.lato(fontSize: 15))),
        ListTile(
            leading: Container(
              width: 55,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFFFC857)),
              child: const Center(
                  child:
                      Icon(Icons.account_balance_wallet, color: Colors.black)),
            ),
            title: Text(
              'Configure Payments',
              style: GoogleFonts.lato(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
                'Change card and payment information associated with this account.',
                style: GoogleFonts.lato(fontSize: 15))),
        ListTile(
            leading: Container(
              width: 55,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(216, 255, 12, 12)),
              child:
                  const Center(child: Icon(Icons.delete, color: Colors.black)),
            ),
            title: Text(
              'Delete Account',
              style: GoogleFonts.lato(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
                'Clear all data stored on our servers and dissociate yourself from our company.',
                style: GoogleFonts.lato(fontSize: 15, color: Colors.grey))),
        ListTile(
            leading: Container(
              width: 55,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 252, 0, 176)),
              child:
                  const Center(child: Icon(Icons.logout, color: Colors.black)),
            ),
            onTap:
                () {}, // => Navigator.of(context).push(SlideUpAnim(page: const AccountSettingsPage())),
            title: Text(
              'Logout',
              style: GoogleFonts.lato(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
                'Lock user account associated with this app till further notice.',
                style: GoogleFonts.lato(fontSize: 15, color: Colors.grey))),
      ]),
    );
  }
}
