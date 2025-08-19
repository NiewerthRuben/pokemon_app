import 'package:flutter/material.dart';
import 'package:pokemon_app/extensions/string_casing_extension.dart';

class StatBarWidget extends StatelessWidget {
  final String name;
  final int value;
  final Color? color;

  const StatBarWidget({
    super.key,
    required this.name,
    required this.value,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    const maxStat = 150;

    final percentage = value / maxStat;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          SizedBox(width: 80, child: Text(name.capitalize())),
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: percentage.clamp(0, 1),
                  child: Container(
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Text(value.toString()),
        ],
      ),
    );
  }
}
