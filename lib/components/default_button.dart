import 'package:flutter/material.dart';
import 'package:flutter_ohanaluvy/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    final HeightScreen = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      height: HeightScreen * 0.065,
      child: FlatButton(
        color: BlueTextColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: press,
        child: Text(
          text,
          style: GoogleFonts.quicksand(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
