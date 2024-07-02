// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:furni/components/productcard.dart';

class GridItem {
  final String image;
  final String modelName;
  final String brand;
  final String newPrice;
  final String oldPrice;

  GridItem({
    required this.image,
    required this.modelName,
    required this.brand,
    required this.newPrice,
    required this.oldPrice,
  });
}

class NewArrival extends StatefulWidget {
  const NewArrival({super.key});

  @override
  State<NewArrival> createState() => _NewArrivalState();
}

class _NewArrivalState extends State<NewArrival> {
  List<String> images = [
    "assets/images/na1.png",
    "assets/images/na2.png",
    "assets/images/na3.png",
  ];

  List<GridItem> gridItems = [
    GridItem(
      image: "assets/images/1.png",
      modelName: "Slim Fit Shirt",
      brand: "Roadster",
      newPrice: "₹3500",
      oldPrice: "₹4000",
    ),
    GridItem(
      image: "assets/images/2.png",
      modelName: "Casual T-Shirt",
      brand: "Allen Solly",
      newPrice: "₹2500",
      oldPrice: "₹4000",
    ),
    GridItem(
      image: "assets/images/3.png",
      modelName: "Nike Impact 4V",
      brand: "Nike",
      newPrice: "₹6000",
      oldPrice: "₹7000",
    ),
    GridItem(
      image: "assets/images/4.png",
      modelName: "GA-2100P-1A",
      brand: "Casio",
      newPrice: "₹9500",
      oldPrice: "₹15000",
    ),
    GridItem(
      image: "assets/images/5.png",
      modelName: "EFR-574D",
      brand: "Casio",
      newPrice: "₹9500",
      oldPrice: "₹15000",
    ),
    GridItem(
      image: "assets/images/6.png",
      modelName: "Blue Jeans",
      brand: "Levis",
      newPrice: "₹2000",
      oldPrice: "₹4000",
    ),
  ];

  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _nextPage() {
    if (_currentPage < images.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  void _previousPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Arrivals"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Stack(
              children: [
                SizedBox(
                  height: 290,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: images.length,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Image(
                          width: 218,
                          image: AssetImage(
                            images[index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                if (_currentPage < images.length - 1)
                  Positioned(
                    right: 10,
                    top: 120,
                    child: IconButton(
                      onPressed: _nextPage,
                      icon: Icon(
                        Icons.chevron_right_rounded,
                        size: 35,
                        color: Color(0xFF5ACAC4),
                      ),
                    ),
                  ),
                if (_currentPage > 0)
                  Positioned(
                    left: 10,
                    top: 120,
                    child: IconButton(
                      onPressed: _previousPage,
                      icon: Icon(
                        Icons.chevron_left_rounded,
                        size: 35,
                        color: Color(0xFF5ACAC4),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GridView.builder(
                itemCount: gridItems.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .9,
                ),
                itemBuilder: (context, index) {
                  return ProductCard(
                      imageString: gridItems[index].image,
                      brand: gridItems[index].brand,
                      model: gridItems[index].modelName,
                      newPrice: gridItems[index].newPrice,
                      oldPrice: gridItems[index].oldPrice);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
