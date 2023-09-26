import 'package:flutter/material.dart';
import 'package:ulearning_app/Widgets/shadows.dart';
import 'package:ulearning_app/Widgets/text_widget.dart';

Widget appOnboardingPage(PageController controller,
    {String imagePath = "",
    String title = "",
    String subtitle = "",
    index = 0}) {
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
      _nextButton(index, controller),
    ],
  );
}

Widget _nextButton(int index, PageController controller) {
  return InkWell(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(index,
            duration: const Duration(milliseconds: 300), curve: Curves.linear);
      }
    },
    child: Container(
      width: 325,
      height: 50,
      margin: const EdgeInsets.only(top: 100, left: 25, right: 25),
      decoration: appBoxShadow(),
      child: Center(child: normalText1(text: "next", color: Colors.white)),
    ),
  );
}
