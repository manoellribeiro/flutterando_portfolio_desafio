import 'package:flutter/material.dart';
import 'package:flutterando_desafios_portfolio/app/shared/size_config.dart';


class AppTheme{

  AppTheme._();

  static const Color white = Color.fromRGBO(255, 255, 255, 0.99);
  static const Color whiteBackground = Colors.white;
  static const Color blueColor = Color(0xff3340FF);


  static final ThemeData lightThemeHome = ThemeData(
    scaffoldBackgroundColor: whiteBackground,
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(color: white),
    accentColor: blueColor,
    textTheme: TextTheme(
      button: TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w600
      ),
      subhead: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w600
      ),
      title: TextStyle(
      color: Colors.black,
      fontSize: 70,
      fontWeight: FontWeight.w900
      ),
      subtitle: TextStyle(
      color: Colors.black.withOpacity(0.6),
      fontSize: 26,
      ),  
    ),         
  );

  
}