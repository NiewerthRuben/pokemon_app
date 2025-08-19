import 'package:flutter/material.dart';
import 'package:pokemon_app/extensions/color_contrast_extension.dart';
import 'package:pokemon_app/extensions/string_casing_extension.dart';

class StatBarWidget extends StatelessWidget {
  final String name;
  final int value;
  final Color textColor;
  final Color barColor;

  const StatBarWidget({
    super.key,
    required this.name,
    required this.value,
    required this.textColor,
    required this.barColor,
  });

  @override
  Widget build(BuildContext context) {
    const maxStat = 150;
    final percentage = value / maxStat;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          SizedBox(
            width: 80,
            child: Text(name.capitalize(), style: TextStyle(color: textColor)),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                    border: BoxBorder.all(color: barColor, width: 3),
                    color: barColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: percentage.clamp(0, 1),
                  child: Container(
                    height: 20,
                    decoration: BoxDecoration(
                      border: BoxBorder.all(color: barColor),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Text("$value/$maxStat", style: TextStyle(color: textColor)),
        ],
      ),
    );
  }
}
