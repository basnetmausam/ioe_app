import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      primaryColor: Colors.black,
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 45,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        headline2: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        headline3: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        headline4: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        headline5: TextStyle(
          fontSize: 17,
          // fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        bodyText1: TextStyle(
          fontSize: 20,
          // fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        bodyText2: TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: creamColor,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.shade500,
      ),
      appBarTheme: AppBarTheme(
        color: creamColor,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: darkCard,
        canvasColor: darkCanvas,
        primaryColor: Colors.white,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          headline2: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          headline3: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          headline4: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          headline5: TextStyle(
            fontSize: 17,
            // fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          bodyText1: TextStyle(
            fontSize: 20,
            // fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          bodyText2: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          // backgroundColor: darkBottom,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey.shade600,
        ),
      );

  //Colors
  // static Color darkBottom = const Color(0xff0F0F29);
  static Color darkCard = const Color(0xff302852);
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkCanvas = const Color(0xff0d002e);
}
