import 'package:flutter/material.dart';
import 'package:start_app/screens/first_challange_screen.dart';
import 'package:start_app/screens/second_challange_screen.dart';
import 'package:start_app/screens/test_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: getTestScreen(),
      // home: getFirstChallangeScreen(),
      // home: getSecondChallangeScreen(),
    );
  }
}
