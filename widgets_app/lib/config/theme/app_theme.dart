import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.black,
  Colors.white,
  Colors.pink,
  Colors.blueGrey,
  Colors.blueGrey,
  Colors.pinkAccent,
  Colors.yellowAccent
];

class AppTheme {
  final int selecterColor;

  AppTheme({this.selecterColor = 0})
      : assert(selecterColor >= 0, 'selected color must be greater then 0'),
        assert(selecterColor < colorList.length,
            'selected color must be greater than ${colorList.length}');

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[selecterColor],
      );
}
