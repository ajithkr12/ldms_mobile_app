import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String inputText;
  final Color fontColor;
  final double fontSize;
  final FontWeight fontWeight;
  final double letterSpacing; // Added letterSpacing property
  final double wordSpacing; // Added wordSpacing property
  final VoidCallback onButtonPressed; // Use your preferred name

  const CustomTextButton({
    Key? key,
    required this.inputText,
    this.fontColor = const Color(0xffffffff),
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.normal,
    this.letterSpacing = 0.5, // Default letterSpacing
    this.wordSpacing = 0.0, // Default wordSpacing
    required this.onButtonPressed, // Use your preferred name here
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onButtonPressed, // Use your preferred name here
        child: Text(
          inputText,
          style: TextStyle(
            color: fontColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
            letterSpacing: letterSpacing, // Set letterSpacing
            wordSpacing: wordSpacing, // Set wordSpacing
          ),
        ));
  }
}
