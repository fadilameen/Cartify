// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furni/components/categorycard.dart';
import 'package:furni/components/productcard.dart';
import 'package:furni/components/sectionheader.dart';
import 'package:furni/components/theme.dart';
import 'package:furni/primary/searchpage.dart';
import 'package:furni/secondary/categorylist.dart';
import 'package:furni/secondary/newarrival.dart';
import 'package:furni/secondary/popularlist.dart';
import 'package:furni/secondary/productview.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> banners = [
    "assets/images/f1.png",
    "assets/images/f2.png",
    "assets/images/f3.png",
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      builder: (context) => Searchpage(),
                    ));
              },
              icon: Icon(
                Icons.search_outlined,
                color: primaryColor,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 220,
                child: Center(
                  child: CarouselSlider.builder(
                    itemCount: banners.length,
                    itemBuilder:
                        (BuildContext context, int index, int pageViewIndex) =>
                            Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              banners[index],
                            ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    options: CarouselOptions(
                      height: 140,
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
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: SectionHeader(
                  title: "New Arrivals",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewArrival(),
                        ));
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProductCard(
                      imageString: "assets/images/jordan23.png",
                      brand: 'Nike',
                      model: 'Jordan 23 Engineered',
                      newPrice: "₹2000",
                      oldPrice: '₹4000'),
                  ProductCard(
                      imageString: "assets/images/crewneckshirt.png",
                      brand: 'Nike',
                      model: 'Crew-Neck Sweatshirt',
                      newPrice: "₹2000",
                      oldPrice: '₹4000')
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 10),
                child: SectionHeader(
                  title: "Category ",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CategoryList(),
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategoryCard(
                    title: "Shoes",
                    imageString: "assets/images/shoes.png",
                  ),
                  CategoryCard(
                    title: "T-Shirts",
                    imageString: "assets/images/tshirts.png",
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: SectionHeader(
                  title: "Popular",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PopularList(),
                        ));
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProductCard(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductViewPage(),
                            ));
                      },
                      imageString: "assets/images/nikeairmax.png",
                      brand: 'Nike',
                      model: 'Nike Air Max AP',
                      newPrice: "₹6000",
                      oldPrice: '₹7000'),
                  ProductCard(
                      imageString: "assets/images/nikeimpact.png",
                      brand: 'Nike',
                      model: 'Nike Impact 4v',
                      newPrice: "₹6000",
                      oldPrice: '₹7000')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
