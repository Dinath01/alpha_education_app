// ignore_for_file: prefer_const_constructors

import '../Screens/register.dart';
import 'package:flutter/material.dart';
import '../Screens/search.dart';
import '../Widgets/widgets.dart';
import '../utils/colors.dart';
import '../Widgets/buttons.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("CB2B93"),
          hexStringToColor("9546C4"),
          hexStringToColor("5E61F4")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height * 0.2, 20, 0),
          child: Column(
            children: [
              logoWidget("assets/images/01.png"),
              SizedBox(
                height: 40,
              ),
              Center(
                child: ElevatedButton(
                  style: buttonPrimary,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LogInScreen()));
                  },
                  child: Text(
                    'Search Student',
                    style: TextStyle(
                      fontSize: 22,
                      color: Color.fromARGB(255, 114, 39, 200),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  style: buttonPrimary,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpScreen()));
                  },
                  child: Text(
                    'Register Student',
                    style: TextStyle(
                      fontSize: 22,
                      color: Color.fromARGB(255, 114, 39, 200),
                    ),
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
