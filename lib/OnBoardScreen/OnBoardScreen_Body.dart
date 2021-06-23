import 'package:flutter/material.dart';

import 'OnBoardContent_model.dart';
import '../constants.dart';
import 'OnBoardScreen_Content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: OnBoardScreenContent_Model.list.length,
                itemBuilder: (context, index) => OnBoardScreen_Content(
                  image: OnBoardScreenContent_Model.list[index].image,
                  title: OnBoardScreenContent_Model.list[index].title,
                  description:
                      OnBoardScreenContent_Model.list[index].description,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      children: List.generate(
                        OnBoardScreenContent_Model.list.length,
                        (index) =>
                            buildDot(currentPage: currentPage, index: index),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: BlueTextColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        )),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 30,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class buildDot extends StatelessWidget {
  const buildDot({
    Key key,
    @required this.currentPage,
    @required this.index,
  }) : super(key: key);

  final int currentPage;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10),
      child: Container(
        height: 13,
        width: 13,
        decoration: BoxDecoration(
          color: currentPage == index ? BlueTextColor : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
