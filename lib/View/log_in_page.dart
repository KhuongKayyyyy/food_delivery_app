import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/Component/password_textfield.dart';
import 'package:food_delivery_app/Component/primary_button.dart';
import 'package:food_delivery_app/Component/primary_textfield.dart';
import 'package:food_delivery_app/View/forget_password_page.dart';
import 'package:food_delivery_app/View/homepage_screen.dart';
import 'package:food_delivery_app/View/sign_up.dart';

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 180), // Added some space at the top
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Text(
                  "Log In",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),),
                 SizedBox(height: 10), // Added some space between texts
                 Center(
                   child: Text(
                     "Please sign in to your existing account",
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
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          activeColor: Theme.of(context).colorScheme.surface,
                          onChanged: (newBool) {
                            setState(() {
                              isChecked = newBool;
                            });
                          },
                        ),
                        Text(
                          "Remember me",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.surface),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPasswordPage()));
                          },
                          child: Text(
                            "Forgot password?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    PrimaryButton(btnText: "LOG IN", onPressed: _validateLogIn),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Spacer(),
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.surface,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                          }, 
                          child: Text(
                          "SIGN UP",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        ),
                        const Spacer(),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Center(child: Text("Or",style: TextStyle(fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.surface),),),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Spacer(),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color(0xFF395998)
                          ),
                          child: IconButton(
                            onPressed: (){},
                            icon: const FaIcon(FontAwesomeIcons.facebook, size: 40,),
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 20,),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: const Color(0xFF169CE8)
                          ),
                          child: IconButton(
                            onPressed: (){},
                            icon: const FaIcon(FontAwesomeIcons.twitter, size: 40,),
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 20,),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.black
                          ),
                          child: IconButton(
                            onPressed: (){},
                            icon: const FaIcon(FontAwesomeIcons.apple, size: 40,),
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _validateLogIn(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomepageScreen()));
  }
}
