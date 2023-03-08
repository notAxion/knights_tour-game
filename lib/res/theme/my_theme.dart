import 'package:flutter/material.dart';
import 'package:knight/res/palette/swatch.dart';

ThemeData myTheme() {
  return ThemeData(
    // This is the theme of your application.
    //
    // Try running your application with "flutter run". You'll see the
    // application has a blue toolbar. Then, without quitting the app, try
    // changing the primarySwatch below to Colors.green and then invoke
    // "hot reload" (press "r" in the console where you ran "flutter run",
    // or simply save your changes to "hot reload" in a Flutter IDE).
    // Notice that the counter didn't reset back to zero; the application
    // is not restarted.
    // primarySwatch: Colors.deepPurple,
    primarySwatch: Palette.purpleX,
    primaryColor: Colors.deepPurple.shade900,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Color(0x00000000),
      elevation: 0,
    ),
    scaffoldBackgroundColor: const Color(0xFF1A1A1A),
    brightness: Brightness.dark,
    iconTheme: IconThemeData(
      color: Colors.deepPurple.shade900,
      size: 18.0,
    ),
    fontFamily: 'SFPro',
    textButtonTheme: TextButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
      ),
    ),
  );
}
