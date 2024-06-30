import 'package:flutter/material.dart';
import 'package:furni/components/theme.dart';
import 'package:furni/primary/cartpage.dart';
import 'package:furni/primary/homepage.dart';
import 'package:furni/primary/profilepage.dart';
import 'package:furni/primary/wishlistpage.dart';

class Primary extends StatefulWidget {
  const Primary({super.key});

  @override
  State<Primary> createState() => _PrimaryState();
}

class _PrimaryState extends State<Primary> {
  int _selectedIndex = 0;

  // Define icons for selected and unselected states
  final List<IconData> _selectedIcons = [
    Icons.home_rounded,
    Icons.favorite_rounded,
    Icons.shopping_cart,
    Icons.person_rounded,
  ];

  final List<IconData> _unselectedIcons = [
    Icons.home_outlined,
    Icons.favorite_outline_rounded,
    Icons.shopping_cart_outlined,
    Icons.person_outline_rounded,
  ];
  final List<Widget> _pages = [
    const HomePage(),
    const WishlistPage(),
    const CartPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
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
