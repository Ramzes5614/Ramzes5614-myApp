import 'package:flutter/material.dart';
import 'constants.dart';

ThemeData basicLightTheme() => ThemeData(
      backgroundColor: kMainColorLight,
      brightness: Brightness.light,
      primaryColor: kAppBarColor,
      textTheme: TextTheme(
          headline2: TextStyle(
        fontWeight: FontWeight.w700,
        color: Colors.black,
      )),
      iconTheme: IconThemeData(color: Color(0xFF362F34), size: 25.0),
      unselectedWidgetColor: Color(0xFF98869C),
      selectedRowColor: Color(0xFF310E3A),
    );
