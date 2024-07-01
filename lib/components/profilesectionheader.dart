import 'package:flutter/material.dart';

class ProfileSectionHeader extends StatelessWidget {
  final String sectionTitle;

  const ProfileSectionHeader({
    super.key,
    required this.sectionTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 13, bottom: 8),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Text(
          sectionTitle,
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
