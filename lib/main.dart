import 'package:flutter/material.dart';
import 'package:flutter_ohanaluvy/LoginPageScreen.dart';
import 'package:flutter_ohanaluvy/OnBoardScreen/OnBoardScreen.dart';
import 'package:flutter_ohanaluvy/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Ohanaluvy',
      initialRoute: '/SplashScreen',
      routes: {
        '/SplashScreen': (context) => SplashScreen(),
        '/OnBoardScreen': (context) => OnBoardScreen(),
        '/LoginPageScreen': (context) => LoginPageScreen(),
      },
    );
  }
}
