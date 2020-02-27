import 'package:flutter/material.dart';

darkTheme(context) {
  return ThemeData(
    fontFamily: 'GoogleSansRegular',
    primarySwatch: Colors.purple,
    primaryColor: Colors.black,
    accentColor: Colors.purple,
    disabledColor: Colors.grey,
    cardColor: Color(0xff1f2124),
    canvasColor: Colors.black,
    brightness: Brightness.dark,
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
      colorScheme: ColorScheme.dark(),
      buttonColor: Colors.purple,
      splashColor: Colors.black,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0.0
    ),
  );
}

lighTheme(context){
  return ThemeData(
    fontFamily: 'GoogleSansRegular',
    primarySwatch: Colors.purple,
    primaryColor: Colors.white,
    accentColor: Colors.purple,
    disabledColor: Colors.grey,
    cardColor: Colors.white,
    canvasColor: Colors.white,
    brightness: Brightness.light,
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
      colorScheme: ColorScheme.light(),
      buttonColor: Colors.purple,
      splashColor: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0.0
    ),
  );
}