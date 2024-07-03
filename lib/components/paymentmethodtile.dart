import 'package:flutter/material.dart';
import 'package:furni/components/circlebutton.dart';
import 'package:furni/components/theme.dart';

class PaymentMethodTile extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  final bool filled;

  const PaymentMethodTile({
    super.key,
    this.onPressed,
    required this.title,
    required this.filled,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            ),
            CircleButton(filled: filled),
            SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: filled ? FontWeight.bold : FontWeight.normal,
                //filled ? primaryColor : Colors.transparent
                color: Colors.black,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.expand_more_rounded,
                color: primaryColor,
                size: 35,
              ),
            )
          ],
        ),
      ),
    );
  }
}
