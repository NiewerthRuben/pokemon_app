// lib/extensions/color_contrast_extension.dart
import 'package:flutter/material.dart';

extension ColorContrastExtension on Color {
  Color get contrastColor =>
      computeLuminance() > 0.2 ? Colors.black : Colors.white;
}
