import 'package:flutter/material.dart';

class KColors {
  static const secondary = Color(0xFF489c45);

  static const MaterialColor primary = MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color(0xFFfabbbd),
      100: Color(0xFFf78e91),
      200: Color(0xFFf36165),
      300: Color(0xFFf14a4f),
      400: Color(0xFFf03439),
      500: Color(_primaryValue),
      600: Color(0xFFd61a20),
      700: Color(0xFFbe171c),
      800: Color(0xFFa71419),
      900: Color(0xFF8f1115),
    },
  );
  static const int _primaryValue = 0xFFee1d23;
}


// "50": "#fabbbd",
//     "100": "#f78e91",
//     "200": "#f36165",
//     "300": "#f14a4f",
//     "400": "#f03439",
//     "500": "#ee1d23",
//     "600": "#d61a20",
//     "700": "#be171c",
//     "800": "#a71419",
//     "900": "#8f1115"
//   };