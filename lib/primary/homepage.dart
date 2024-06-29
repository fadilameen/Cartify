// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furni/components/theme.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  // Define icons for selected and unselected states
  static const List<IconData> _selectedIcons = [
    Icons.home_rounded,
    Icons.favorite_rounded,
    Icons.shopping_cart,
    Icons.person_rounded,
  ];

  static const List<IconData> _unselectedIcons = [
    Icons.home_outlined,
    Icons.favorite_outline_rounded,
    Icons.shopping_cart_outlined,
    Icons.person_outline_rounded,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: primaryColor,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 0 ? _selectedIcons[0] : _unselectedIcons[0],
              color: Colors.white,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 1 ? _selectedIcons[1] : _unselectedIcons[1],
              color: Colors.white,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 2 ? _selectedIcons[2] : _unselectedIcons[2],
              color: Colors.white,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 3 ? _selectedIcons[3] : _unselectedIcons[3],
              color: Colors.white,
            ),
            label: 'Person',
          ),
        ],
      ),
    );
  }
}
