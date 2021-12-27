import 'package:flutter/material.dart';

ThemeData globalThemeLight() => ThemeData(
      fontFamily: 'Georgia',
      splashColor: Colors.yellow,
      colorScheme: ColorScheme.fromSwatch(
        brightness: Brightness.light,
        primarySwatch: Colors.orange,
      ).copyWith(
        secondary: Colors.green,
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
          //fontSize: 72.0,
          fontWeight: FontWeight.bold,
        ),
        headline6: TextStyle(
          //fontSize: 36.0,
          fontStyle: FontStyle.italic,
        ),
        bodyText2: TextStyle(
          //fontSize: 18.0,
          fontFamily: 'Hind',
        ),
        headline5: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

ThemeData globalThemeDark() => ThemeData(
      fontFamily: 'Georgia',
      splashColor: Colors.yellow,
      colorScheme: ColorScheme.fromSwatch(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ).copyWith(
        secondary: Colors.green,
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
          //fontSize: 72.0,
          fontWeight: FontWeight.bold,
        ),
        headline6: TextStyle(
          //fontSize: 36.0,
          fontStyle: FontStyle.italic,
        ),
        bodyText2: TextStyle(
          //fontSize: 18.0,
          fontFamily: 'Hind',
        ),
        headline5: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

// TextStyle bigHeader() => TextStyle(
//       color: Colors.black,
//       fontSize: 30,
//       fontWeight: FontWeight.w600,
//     );
//
// TextStyle headerTxt1() => TextStyle(
//       color: Colors.black,
//       fontSize: 18,
//     );

final ButtonStyle buyBtnStyle = ButtonStyle(
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
      side: BorderSide(color: Colors.red),
    ),
  ),
);
