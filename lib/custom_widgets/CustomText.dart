import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double? fontSize;
  final FontWeight fontWeight;
  final double letterSpacing; // Added letterSpacing property
  final double wordSpacing; // Added wordSpacing property

  const CustomText({
    Key? key,
    required this.text,
    this.color = const Color(0xffffffff),
    this.fontSize,
    this.fontWeight = FontWeight.normal,
    this.letterSpacing = 0.0, // Default letterSpacing
    this.wordSpacing = 0.0, // Default wordSpacing
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      //textAlign: TextAlign.center,
      text,
      textAlign: TextAlign.start,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing, // Set letterSpacing
        wordSpacing: wordSpacing,
        // Set wordSpacing
      ),
    );
  }
}
