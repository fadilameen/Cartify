// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furni/components/custombutton1.dart';
import '../components/customtextfield.dart';
import '../components/theme.dart';
import 'signuppage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
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
            flex: 7,
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
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Text(
                        "WELCOME BACK!",
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
                      child: Row(
                        children: [
                          Checkbox(
                              activeColor: Colors.black,
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value ?? false;
                                });
                              }),
                          Text(
                            "Remember me",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          Spacer(),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forget Password?",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
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
