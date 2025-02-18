import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String inputText;
  final double height;
  final Color backgroundColor;
  final Color borderColor;
  final Color fontColor;
  final double borderRadius;
  final double fontSize;
  final FontWeight fontWeight;
  final VoidCallback onButtonPressed; // Use your preferred name

  const CustomButton({
    Key? key,
    required this.inputText,
    this.height = 52,
    this.borderRadius = 50.0,
    this.borderColor = Colors.transparent,
    this.backgroundColor = const Color(0xff544BC3),
    this.fontColor = const Color(0xffffffff),
    this.fontSize = 18,
    this.fontWeight = FontWeight.w500,
    required this.onButtonPressed, // Use your preferred name here
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(height),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius), // Border radius
          side: BorderSide(
              color: borderColor, width: 1), // Border color and width
        ),
      ),
      onPressed: onButtonPressed,
      child: Text(inputText,
          style: TextStyle(
              color: fontColor, fontSize: fontSize, fontWeight: fontWeight)),
    );
  }
}
