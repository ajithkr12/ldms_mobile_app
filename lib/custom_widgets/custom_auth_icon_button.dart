import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAuthIconButton extends StatelessWidget {
  final String iconPath;
  final double height;
  final Color backgroundColor;
  final VoidCallback onButtonPressed; // Use your preferred name
  final double borderRadius;
  final double padding;

  const CustomAuthIconButton(
      {Key? key,
      required this.iconPath,
      this.height = 36,
      this.backgroundColor = const Color(0xffFFFFFF),
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
          iconPath, // Change to any color
        ),
      ),
    );
  }
}
