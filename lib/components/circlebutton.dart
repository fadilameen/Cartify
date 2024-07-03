import 'package:flutter/material.dart';
import 'package:furni/components/theme.dart';

class CircleButton extends StatelessWidget {
  final bool filled;

  const CircleButton({
    super.key,
    required this.filled,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16, // diameter
      height: 16,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border:
            Border.all(color: primaryColor, width: 2), // border color and width
      ),
      child: Padding(
        padding: const EdgeInsets.all(1.5), // padding from the outline
        child: CircleAvatar(
          backgroundColor: filled ? primaryColor : Colors.transparent,
          radius: 6, // radius of the inner CircleAvatar
        ),
      ),
    );
  }
}
