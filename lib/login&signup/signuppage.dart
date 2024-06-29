// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../components/custombutton1.dart';
import '../components/customtextfield.dart';
import '../components/theme.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Center(
              child: SizedBox(
                height: 120,
                width: 128,
                child: Image.asset(
                  "assets/images/logo.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 652,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ListView(
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Text(
                          "WELCOME!",
                          style: TextStyle(
                              fontSize: 36, fontWeight: FontWeight.bold),
                        ),
                      ),
                      CustomTextField(
                        hintText: "Email Id",
                        iconData: Icons.mail_rounded,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      CustomTextField(
                        hintText: "Password",
                        iconData: Icons.key_rounded,
                      ),
                      SizedBox(
                        width: 335,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CustomButton1(width: 320, height: 50, title: "LOGIN"),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "or",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/FB.png"),
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset("assets/images/GOOGLE.png"),
                        ],
                      ),
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Sen",
                                fontSize: 17),
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpPage(),
                                  ),
                                );
                              },
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.grey,
                                    fontFamily: "Sen"),
                              ))
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
