import 'package:flutter/material.dart';
import 'OnBoardScreen_AppBar.dart';
import 'OnBoardScreen_Body.dart';

class OnBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarCustome(context),
      body: Body(),
    );
  }
}
