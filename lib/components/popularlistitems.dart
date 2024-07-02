import 'package:flutter/material.dart';
import 'package:furni/components/productcard.dart';

class PopularListitems extends StatelessWidget {
  final ProductCard item1;
  final ProductCard item2;

  const PopularListitems({
    super.key,
    required this.item1,
    required this.item2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [item1, item2],
    );
  }
}
