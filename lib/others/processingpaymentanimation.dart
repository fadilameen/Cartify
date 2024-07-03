// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:furni/others/failurepage.dart';
import 'package:furni/others/successpage.dart';

class ImageCyclerPage extends StatefulWidget {
  const ImageCyclerPage({super.key});

  @override
  _ImageCyclerPageState createState() => _ImageCyclerPageState();
}

class _ImageCyclerPageState extends State<ImageCyclerPage> {
  int _currentImageIndex = 0;
  final List<String> _images = [
    'assets/images/image2.png',
    'assets/images/image1.png',
    'assets/images/image3.png',
    'assets/images/image4.png',
  ];
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startImageCycling();
  }

  void _startImageCycling() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _currentImageIndex = (_currentImageIndex + 1) % _images.length;
      });

      if (_currentImageIndex == _images.length - 1) {
        timer.cancel();
        _navigateToNextPage();
      }
    });
  }

  void _navigateToNextPage() {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const SuccessPage()),
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Processing Payment',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    child: Image.asset(
                  fit: BoxFit.fitHeight,
                  _images[_currentImageIndex],
                  height: 15,
                  width: double.infinity,
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
