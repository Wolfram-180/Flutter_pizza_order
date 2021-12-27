import 'package:flutter/material.dart';

TextStyle bigHeader() => TextStyle(
      color: Colors.black,
      fontSize: 30,
      fontWeight: FontWeight.w600,
    );

TextStyle headerTxt1() => TextStyle(
      color: Colors.black,
      fontSize: 18,
    );

final ButtonStyle buyBtnStyle = ButtonStyle(
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
      side: BorderSide(color: Colors.red),
    ),
  ),
);
