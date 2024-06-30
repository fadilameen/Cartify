// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:furni/components/theme.dart';

class Searchpage extends StatelessWidget {
  const Searchpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Search",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Color(0xFFDEDCDC),
                filled: true,
                hintText: "Search",
                hintStyle: TextStyle(fontSize: 20, color: Color(0xFF454545)),
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: primaryColor,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 140,
                  child: Image.asset(
                    fit: BoxFit.cover,
                    "assets/images/searchicon.png",
                    color: Colors.grey.shade300,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "What are you looking for?",
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 22),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
