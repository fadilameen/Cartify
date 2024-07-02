// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furni/components/custombutton1.dart';
import 'package:furni/components/theme.dart';
import 'package:furni/primary/cartpage.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductViewPage extends StatefulWidget {
  const ProductViewPage({super.key});

  @override
  State<ProductViewPage> createState() => _ProductViewPageState();
}

class _ProductViewPageState extends State<ProductViewPage> {
  final List<String> banners = [
    "assets/images/banner1.png",
    "assets/images/banner2.png",
    "assets/images/banner3.png",
  ];

  final CarouselController _carouselController = CarouselController();
  int _currentIndex = 0;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          "assets/images/logosmall.png",
          height: 23,
          width: 23,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartPage(),
                ),
              );
            },
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: primaryColor,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                CarouselSlider.builder(
                  itemCount: banners.length,
                  itemBuilder:
                      (BuildContext context, int index, int pageViewIndex) =>
                          Image(
                    image: AssetImage(banners[index]),
                    fit: BoxFit.cover,
                  ),
                  options: CarouselOptions(
                    height: 250,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                  carouselController: _carouselController,
                ),
                SizedBox(height: 16),
                Center(
                  child: SmoothPageIndicator(
                    controller: PageController(
                        initialPage: _currentIndex), // PageController
                    count: banners.length,
                    effect: WormEffect(
                      dotHeight: 9.0,
                      dotWidth: 9.0,
                      activeDotColor:
                          buttonColor, // Example color, adjust as needed
                      dotColor: Colors
                          .teal.shade400, // Example color, adjust as needed
                    ), // Your preferred effect
                    onDotClicked: (index) {
                      _carouselController.animateToPage(index);
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nike",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Air Max AP",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                isFavorite = !isFavorite;
                              });
                            },
                            icon: Icon(
                              size: 22,
                              isFavorite
                                  ? Icons.favorite_rounded
                                  : Icons.favorite_outline_rounded,
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Size",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 6),
                      Row(
                        children: [
                          for (var size in ["6", "7", "8", "9", "10"])
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(color: primaryColor),
                                  borderRadius: BorderRadius.circular(12),
                                  color: size == "7"
                                      ? primaryColor
                                      : Colors.transparent,
                                  boxShadow: size == "7"
                                      ? [
                                          BoxShadow(
                                              color: Colors.black54,
                                              offset: Offset(2, 2),
                                              blurRadius: 3)
                                        ]
                                      : null,
                                ),
                                child: Center(
                                  child: Text(
                                    size,
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: size == "7"
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Color",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 6),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.black, width: 1.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 18,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          for (var color in [
                            Colors.red,
                            Colors.blue,
                            Colors.black
                          ])
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: color,
                              ),
                            ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Product",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "With its sleek, sporty design, the Nike Air Max AP lets you bridge past and present in first-class comfort.",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Customer Review",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8, top: 8),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/alen.png"),
                            ),
                            title: Text(
                              "Alen",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black87,
                              ),
                            ),
                            subtitle: Text(
                              "Comfortable to wear",
                              style: TextStyle(
                                fontSize: 18,
                                color: primaryColor,
                              ),
                            ),
                            trailing: Container(
                              height: 30,
                              width: 50,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.black87,
                                    size: 20,
                                  ),
                                  SizedBox(width: 3),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                      fontSize: 21.5,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/tony.png"),
                            ),
                            title: Text(
                              "Tony",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black87,
                              ),
                            ),
                            subtitle: Text(
                              "Perfect Fit!",
                              style: TextStyle(
                                fontSize: 18,
                                color: primaryColor,
                              ),
                            ),
                            trailing: Container(
                              height: 30,
                              width: 50,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.black87,
                                    size: 20,
                                  ),
                                  SizedBox(width: 3),
                                  Text(
                                    "5.0",
                                    style: TextStyle(
                                      fontSize: 21.5,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                          height:
                              90), // Added to give space above bottom container
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Bottom container with fixed height and rounded top border
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, -5),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Price",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade700,
                            ),
                          ),
                          Text(
                            "₹ 6,000",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomButton1(
                      title: "Add to cart",
                      backgroundcolor: primaryColor,
                      bordercolor: primaryColor,
                      height: 40,
                      width: 130,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
