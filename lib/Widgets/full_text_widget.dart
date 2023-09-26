import 'package:flutter/material.dart';
import 'package:ulearning_app/Widgets/text_widget.dart';

Widget appOnboardingPage(
    {String imagePath = "", String title = "", String subtitle = ""}) {
  return Column(
    children: [
      Image.asset(
        imagePath,
        fit: BoxFit.fitWidth,
      ),
      Container(
        margin: const EdgeInsets.only(top: 15),
        child: normalText(text: title),
      ),
      Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: normalText1(text: subtitle),
      ),
      _nextButton(),
    ],
  );
}

Widget _nextButton() {
  return Container(
    width: 300,
    height: 70,
    color: Colors.red,
  );
}
