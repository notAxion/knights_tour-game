import 'package:flutter/material.dart';

class Palette {
  static MaterialColor purpleX = MaterialColor(
    Colors.deepPurple.shade900
        .value, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Colors.deepPurple.shade50,
      100: Colors.deepPurple.shade100,
      200: Colors.deepPurple.shade200,
      300: Colors.deepPurple.shade300,
      400: Colors.deepPurple.shade400,
      500: Colors.deepPurple.shade500,
      600: Colors.deepPurple.shade600,
      700: Colors.deepPurple.shade700,
      800: Colors.deepPurple.shade800,
      900: Colors.deepPurple.shade900,
    },
  );
}
