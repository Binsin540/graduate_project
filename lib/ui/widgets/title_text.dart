import 'package:flutter/material.dart';

import '../style/app_color.dart';

class TitleText extends StatelessWidget {
  TitleText({
    super.key,
    required this.text,
    this.color = ColorPattren.titleText,
    this.size = 20,
  });
  String text;
  Color color;
  double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold),

    );
  }
}
