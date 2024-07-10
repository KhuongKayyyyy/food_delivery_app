import 'package:flutter/material.dart';
import 'package:food_delivery_app/Util/theme.dart';
import 'package:food_delivery_app/View/log_in_page.dart';

import 'Util/fake_data.dart';

void main() {
  FakeData.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      home: LogInPage(),
    );
  }
}