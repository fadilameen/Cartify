// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furni/components/custombutton1.dart';
import 'package:furni/primary/primary.dart';

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
    final isKeyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;
    final logoheight = isKeyboardVisible ? 75.0 : 120.0;
    final logowidth = isKeyboardVisible ? 80.0 : 128.0;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: AnimatedContainer(
                margin: EdgeInsets.only(top: 30),
                curve: Curves.ease,
                duration: Duration(milliseconds: 300),
                height: logoheight,
                width: logowidth,
                child: Image.asset(
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
                    CustomButton1(
                      width: 320,
                      height: 50,
                      title: "LOGIN",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Primary(),
                          ),
                        );
                      },
                    ),
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
                    SizedBox(height: 40),
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
