// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:furni/login&signup/loginpage.dart';

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
      backgroundColor: primaryColor,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: SafeArea(
              child: Center(
                child: Image.asset(
                  height: 120,
                  width: 128,
                  "assets/images/logo.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      hintText: "Full Name",
                      iconData: Icons.person,
                    ),
                    SizedBox(height: 16),
                    CustomTextField(
                      hintText: "Email Id",
                      iconData: Icons.mail_rounded,
                    ),
                    SizedBox(height: 16),
                    CustomTextField(
                      hintText: "Create Password",
                      iconData: Icons.key_rounded,
                    ),
                    SizedBox(height: 16),
                    CustomTextField(
                      hintText: "Confirm Password",
                      iconData: Icons.key_rounded,
                    ),
                    SizedBox(height: 30),
                    CustomButton1(
                      width: 320,
                      height: 50,
                      title: "LOGIN",
                    ),
                    SizedBox(height: 25),
                    Text(
                      "or",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    SizedBox(height: 25),
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
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
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
                                builder: (context) => LoginPage(),
                              ),
                            );
                          },
                          child: Text(
                            "Log In",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey,
                                fontFamily: "Sen"),
                          ),
                        )
                      ],
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
