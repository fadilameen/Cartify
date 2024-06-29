import 'package:flutter/material.dart';
import 'package:furni/components/theme.dart';

class CustomButton1 extends StatelessWidget {
  final double? height;
  final double? width;
  final String title;
  final double? fontSize;
  final FontWeight? fontWeight;
  final List<Shadow>? textShadows;
  final Color? bordercolor;
  final Color? backgroundcolor;
  final void Function()? onTap;
  final Color? titlecolor;

  const CustomButton1({
    super.key,
    this.height,
    this.width,
    required this.title,
    this.fontSize,
    this.fontWeight,
    this.textShadows,
    this.bordercolor,
    this.backgroundcolor,
    this.onTap,
    this.titlecolor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: backgroundcolor ?? buttonColor,
          border: Border.all(color: bordercolor ?? buttonColor),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: titlecolor ?? Colors.white,
                fontSize: fontSize ?? 25,
                fontFamily: 'Sen',
                fontWeight: fontWeight ?? FontWeight.bold,
                shadows: textShadows),
          ),
        ),
      ),
    );
  }
}
