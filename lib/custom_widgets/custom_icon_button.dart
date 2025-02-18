import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconButton extends StatelessWidget {
  final String iconPath;
  final double height;
  final Color backgroundColor;
  final Color iconColor;
  final VoidCallback onButtonPressed; // Use your preferred name
  final double borderRadius;
  final double padding;

  const CustomIconButton(
      {Key? key,
      required this.iconPath,
      this.height = 36,
      this.backgroundColor = const Color(0xffFFFFFF),
      this.iconColor = const Color(0xff000000),
      required this.onButtonPressed, // Use your preferred name here
      this.borderRadius = 5,
      this.padding = 8})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonPressed, // Handle tap here
      child: Container(
        padding: EdgeInsets.all(padding),
        width: height, // width of the square
        height: height, // height of the square
        decoration: BoxDecoration(
          color: backgroundColor
              .withOpacity(0.2), // background color of the square
          borderRadius: BorderRadius.circular(borderRadius), // border radius
        ),
        child: SvgPicture.asset(
          iconPath,

          color: iconColor, // Change to any color
        ),
      ),
    );
  }
}
