import 'package:flutter/material.dart';

extension ColorContrastExtension on Color {
  Color get contrastColor {
    final double luminance = computeLuminance();
    final double contrastWithWhite = (1.05) / (luminance + 0.05);
    final double contrastWithBlack = (luminance + 0.05) / 0.05;

    return (contrastWithWhite > contrastWithBlack)
        ? Colors.white
        : Colors.black;
  }
}
