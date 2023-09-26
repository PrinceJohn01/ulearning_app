import 'package:flutter/material.dart';

import '../const.dart';

Widget normalText({String text = " ", Color color = AppColors.primaryText}) {
  AppColors colors = AppColors();
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(color: color, fontSize: 28, fontWeight: FontWeight.normal),
  );
}

Widget normalText1(
    {String text = " ", Color color = AppColors.primarySecondaryElementText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.normal),
  );
}
