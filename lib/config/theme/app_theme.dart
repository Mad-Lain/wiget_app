import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.yellow,
  Colors.red,
  Colors.pink,
  Colors.orange,
  Colors.green,
  Colors.purple,
  Colors.redAccent,
  Colors.pinkAccent,
  Colors.blueAccent,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(selectedColor >= 0, 'El color seleccionado debe ser mayor de 0');

  ThemeData getTheme() =>
      ThemeData(useMaterial3: true, colorSchemeSeed: colorList[selectedColor]);
}
