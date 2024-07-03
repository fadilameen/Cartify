import 'package:flutter/material.dart';
import 'package:furni/components/circlebutton.dart';

class PaymentOption extends StatelessWidget {
  final String imageString;
  final String title;

  const PaymentOption({
    super.key,
    required this.imageString,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 11),
      child: Container(
        // height: 62,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(2, 2),
              blurRadius: 6,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(
                width: 12,
                height: 40,
              ),
              Image.asset(
                imageString,
                height: 20,
                width: 60,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  //filled ? primaryColor : Colors.transparent
                  color: Colors.black,
                ),
              ),
              Spacer(),
              SizedBox(
                width: 12,
              ),
              CircleButton(filled: false),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
