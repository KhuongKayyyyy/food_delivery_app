import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery_app/Component/password_textfield.dart';
import 'package:food_delivery_app/Component/primary_button.dart';
import 'package:food_delivery_app/Component/primary_textfield.dart';

class VerificationPage extends StatefulWidget {
  String email;
  VerificationPage({required this.email});
  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  bool? isChecked = false;

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
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        "Verification",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10), // Added some space between texts
                    const Center(
                      child: Text(
                        "We have sent a code to your email",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        widget.email,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
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
                          "CODE",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.surface,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 68,
                                width: 64,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Theme.of(context).colorScheme.secondary
                              ),
                              child: TextField(
                                style: Theme.of(context).textTheme.headlineLarge,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                decoration: const InputDecoration(
                                  border: InputBorder.none,  // Remove underline
                                  focusedBorder: InputBorder.none,  // Remove underline when focused
                                  enabledBorder: InputBorder.none,  // Remove underline when enabled
                                  errorBorder: InputBorder.none,  // Remove underline on error
                                  disabledBorder: InputBorder.none,  // Remove underline when disabled
                                  focusedErrorBorder: InputBorder.none,  // Remove underline on error when focused
                                  // You can customize further with other properties like hintText, hintStyle, etc.
                                ),
                                cursorColor: Theme.of(context).primaryColor,
                              ),
                            ),
                            Container(
                              height: 68,
                              width: 64,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Theme.of(context).colorScheme.secondary
                              ),
                              child: TextField(
                                style: Theme.of(context).textTheme.headlineLarge,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                              ),
                            ),
                            Container(
                              height: 68,
                              width: 64,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Theme.of(context).colorScheme.secondary
                              ),
                              child: TextField(
                                style: Theme.of(context).textTheme.headlineLarge,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                              ),
                            ),
                            Container(
                              height: 68,
                              width: 64,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Theme.of(context).colorScheme.secondary
                              ),
                              child: TextField(
                                style: Theme.of(context).textTheme.headlineLarge,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 15),
                        PrimaryButton(
                          btnText: "VERIFY",
                          onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => ))
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
      ),
    );
  }
}
