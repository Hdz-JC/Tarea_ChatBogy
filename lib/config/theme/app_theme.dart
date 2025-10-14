import 'package:flutter/material.dart';
const List<Color> colors = [
  Colors.black,
  Colors.blue,
  Color.fromARGB(255,17,2,128),
  Colors.orange,
  Colors.pink,
  Colors.green,
  Colors.purple
];
class AppTheme {
  final int selectedColors;
  const AppTheme({required this.selectedColors})
    : assert(
        selectedColors > 0 && selectedColors < colors.length,
        'no te pases compa solo es del 0 al ${colors.length - 1} el esquema de colores,'
    );
  ThemeData theme() => ThemeData(
    colorSchemeSeed: colors[selectedColors],
    brightness: Brightness.dark,
  );
}
