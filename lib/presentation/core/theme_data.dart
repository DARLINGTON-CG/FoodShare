import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


final ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actionsIconTheme: const IconThemeData(color: Colors.black, size: 22),
        iconTheme: const IconThemeData(color: Colors.black, size: 22),
        titleTextStyle: GoogleFonts.lato(
            fontSize: 19, fontWeight: FontWeight.bold, color: Colors.black)),
    sliderTheme: const SliderThemeData(
        rangeThumbShape: RoundRangeSliderThumbShape(
      enabledThumbRadius: 7,
    )),
    primaryColor: Colors.white,
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    navigationBarTheme: const NavigationBarThemeData(
        backgroundColor: Colors.white,
        indicatorColor: Colors.transparent,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        height: 60),
    splashColor: Colors.transparent,
    iconTheme: const IconThemeData(color: Colors.black),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: const Color(0xFF3212F1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.black,
      labelStyle: GoogleFonts.lato(fontSize: 15),
      indicatorSize: TabBarIndicatorSize.label,
    ),
    useMaterial3: false,
    bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.white),
    textTheme: TextTheme(
      bodyText1: GoogleFonts.lato(fontSize: 12, color: Colors.black),
      bodyText2: GoogleFonts.lato(fontSize: 14, color: Colors.black),
      headline1: GoogleFonts.alegreya(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      headline2: GoogleFonts.alegreya(fontSize: 17, color: Colors.black),
      headline3: GoogleFonts.alegreya(
          fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),
      headline4: GoogleFonts.alegreya(fontSize: 16, color: Colors.black),
    ),
    textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Colors.black,
        selectionColor: Colors.grey,
        selectionHandleColor: Colors.black),
    colorScheme: const ColorScheme.light(
      primary: Colors.white,
      secondary: Colors.black,
      error: Colors.red,
      background: Colors.white,
      surface: Colors.white,
      onSurface: Colors.black,
      onBackground: Colors.black,
    ));

final ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
        backgroundColor: const Color.fromARGB(255, 15, 15, 15),
        elevation: 0.0,
        actionsIconTheme: const IconThemeData(color: Colors.white, size: 22),
        iconTheme: const IconThemeData(color: Colors.white, size: 22),
        titleTextStyle: GoogleFonts.lato(
            fontSize: 19, fontWeight: FontWeight.bold, color: Colors.white)),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.white,
      labelStyle: GoogleFonts.lato(fontSize: 15),
      indicatorSize: TabBarIndicatorSize.label,
    ),
    sliderTheme: const SliderThemeData(
        rangeThumbShape: RoundRangeSliderThumbShape(
      enabledThumbRadius: 7,
    )),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Color.fromARGB(255, 15, 15, 15),
    ),
    scaffoldBackgroundColor: const Color.fromARGB(255, 15, 15, 15),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    navigationBarTheme: const NavigationBarThemeData(
        backgroundColor: Color.fromARGB(255, 15, 15, 15),
        indicatorColor: Colors.transparent,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        height: 60),
    splashColor: Colors.transparent,
    useMaterial3: false,
    primaryColor: Colors.black,
    backgroundColor: Colors.black,
    textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Colors.white,
        selectionColor: Colors.grey,
        selectionHandleColor: Colors.white),
    textTheme: TextTheme(
      bodyText1: GoogleFonts.lato(fontSize: 12, color: Colors.white),
      bodyText2: GoogleFonts.lato(fontSize: 14, color: Colors.white),
      headline1: GoogleFonts.alegreya(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      headline2: GoogleFonts.alegreya(fontSize: 17, color: Colors.white),
      headline3: GoogleFonts.alegreya(
          fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
      headline4: GoogleFonts.alegreya(fontSize: 16, color: Colors.white),
    ),
    iconTheme: const IconThemeData(color: Colors.white),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: const Color(0xFF3212F1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    colorScheme: const ColorScheme.dark(
      primary: Colors.black,
      secondary: Colors.white,
      error: Colors.red,
      background: Colors.black,
      surface: Colors.black,
      onSurface: Colors.white,
      onBackground: Colors.white,
    ));
