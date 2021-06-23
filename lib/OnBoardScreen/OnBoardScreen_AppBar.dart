import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

PreferredSize AppBarCustome(context) {
  return PreferredSize(
      child: SafeArea(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/LoginPageScreen');
                },
                child: Text(
                  'Skip',
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black45,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      preferredSize: Size.fromHeight(200));
}
