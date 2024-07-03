import 'package:flutter/material.dart';
import 'package:furni/components/theme.dart';

class CustomListViewContainer extends StatelessWidget {
  final List<Widget> customListTileItems;

  const CustomListViewContainer({
    super.key,
    required this.customListTileItems,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF7D7B7B), width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: customListTileItems,
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 0,
      thickness: 1,
      color: Color(0xFF7D7B7B),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final IconData leadingIcon;
  final String title;
  late void Function()? onTap;

  CustomListTile({
    super.key,
    required this.leadingIcon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 9,
          height: 40,
        ),
        Icon(
          leadingIcon,
          size: 24,
          color: primaryColor,
        ),
        SizedBox(
          width: 9,
        ),
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 21,
              color: Colors.black,
            ),
          ),
        ),
        InkWell(
          child: Icon(
            Icons.chevron_right,
            size: 31,
            color: primaryColor,
          ),
          onTap: onTap,
        ),
      ],
    );
  }
}
