import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final double? height;
  final String hintText;
  final IconData iconData;
  const CustomTextField({
    super.key,
    this.height,
    required this.hintText,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: 320,
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 20),
          prefixIcon: Icon(
            iconData,
            color: Colors.black,
            size: 30,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}
