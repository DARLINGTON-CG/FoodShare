import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Image(
                      width: 300,
                      height: 300,
                      image: AssetImage('assets/welcome.png'))),
              Text(
                'FOODSHARE',
                style: GoogleFonts.alegreya(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
                child: Text(
                  'Amazing way to distribute food.\nLet\'s work together to make the world a better place.',
                  style: GoogleFonts.alegreya(fontSize: 17),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'Sign up',
                      style: GoogleFonts.alegreya(
                          fontSize: 15, color: Colors.blue),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  OutlinedButton(onPressed: () {}, child:  Text('Sign In',style: GoogleFonts.alegreya(
                          fontSize: 15, color: Colors.black),),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
