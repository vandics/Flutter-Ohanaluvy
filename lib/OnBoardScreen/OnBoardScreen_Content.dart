import 'package:flutter/material.dart';
import 'package:flutter_ohanaluvy/constants.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class OnBoardScreen_Content extends StatelessWidget {
  const OnBoardScreen_Content({
    Key key,
    this.title,
    this.description,
    this.image,
  }) : super(key: key);
  final String title, description, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        Image.asset(
          image,
          height: 300,
          width: double.infinity,
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(title,
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.bold,
                    color: BlueTextColor,
                    fontSize: 30,
                  )),
            ],
          ),
        ),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                description,
                style: GoogleFonts.quicksand(
                    fontStyle: FontStyle.normal,
                    color: Colors.black,
                    fontSize: 20),
              ),
            ],
          ),
        )
      ],
    );
  }
}
