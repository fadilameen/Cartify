import 'package:flutter/material.dart';
import 'package:furni/components/theme.dart';

class CustomButton1 extends StatelessWidget {
  final double? height;
  final double? width;
  final String title;
  final double? fontsize;
  final FontWeight? fontWeight;
  final List<Shadow>? shadow;
  const CustomButton1({
    super.key,
    this.height,
    this.width,
    required this.title,
    this.fontsize,
    this.fontWeight,
    this.shadow,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: buttonColor,
                fontSize: fontsize,
                fontFamily: 'Sen',
                fontWeight: fontWeight,
                shadows: shadow),
          ),
        ),
      ),
    );
  }
}
