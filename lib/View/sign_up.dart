import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Component/password_textfield.dart';
import '../Component/primary_button.dart';
import '../Component/primary_textfield.dart';

class SignUp extends StatefulWidget{
  @override
  _SignUpState createState() => _SignUpState();
}
class _SignUpState extends State<SignUp>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 180), // Added some space at the top
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),),
                    SizedBox(height: 10), // Added some space between texts
                    Center(
                      child: Text(
                        "Please sign up to get started",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "NAME",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.surface),
                        ),
                        const SizedBox(height: 10),
                        PrimaryTextfield(textHint: "Nguyen Dat Khuong"),
                        const SizedBox(height: 15),
                        Text(
                          "EMAIL",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.surface),
                        ),
                        const SizedBox(height: 10),
                        PrimaryTextfield(textHint: "example@gmail.com"),

                        const SizedBox(height: 15),
                        Text(
                          "PASSWORD",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.surface),
                        ),
                        const SizedBox(height: 10),
                        PasswordTextField(textHint: "***********"),
                        const SizedBox(height: 15),
                        Text(
                          "RE-TYPE PASSWORD",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.surface),
                        ),
                        const SizedBox(height: 10),
                        PasswordTextField(textHint: "***********"),
                        const SizedBox(height: 40),
                        PrimaryButton(btnText: "SIGN UP", onPressed: () {}),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Positioned(
              top: 60,
              left: 20,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back_ios_new_outlined, color: Theme.of(context).colorScheme.surface,),
                ),
              )
          ),
        ],
      )
    );
  }
}