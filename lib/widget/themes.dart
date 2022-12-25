// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        cardColor: Colors.white, // color of material when it is used as a card
        canvasColor: darkBluishColor,
        primaryColor: blackColor,
        backgroundColor: lightBlackColor,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.black, // color of material when it is used as a card
        canvasColor: darkCreamColor,
        primaryColor: whiteColor,
        backgroundColor: lightWhiteColor,
        // ignore: prefer_const_constructors
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      );

  // Colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = Color(0xff403b58);
  static Color lightBluishColor = Vx.purple400;
  static Color blackColor = Vx.black;
  static Color whiteColor = Vx.white;
  static Color lightBlackColor = Colors.black54;
  static Color lightWhiteColor = Colors.white60;
}
