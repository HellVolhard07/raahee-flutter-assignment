import 'package:flutter/material.dart';
import 'package:raahee_flutter_assignment/screens/home_screen.dart';
import 'package:raahee_flutter_assignment/screens/navScreen.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: homeScreen,
      routes: {
        homeScreen: (context) => HomeScreen(),
        navScreen: (context) => NavScreen(),
      },
    );
  }
}
