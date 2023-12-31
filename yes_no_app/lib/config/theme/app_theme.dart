import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 246, 27, 2);

const List<Color> _colothemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Color.fromARGB(255, 20, 1, 63),
  Color.fromARGB(255, 255, 11, 190),
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colothemes.length - 1,
            'color must be bttween 0 and ${_colothemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colothemes[selectedColor]);
  }
}
