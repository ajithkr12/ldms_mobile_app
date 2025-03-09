import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_text.dart';

class HeadingWithIconWidget extends StatelessWidget {
  const HeadingWithIconWidget({
    super.key,
    required this.heading,
    this.headingFontSize = 18,
    this.headingColor = const Color(0xff000000),
    required this.iconUrl,
    this.iconSize = 24,
  });

  final String? heading;
  final double? headingFontSize;
  final Color headingColor;
  final String iconUrl;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (iconSize! * 2)!,
      color: Colors.transparent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // SvgPicture.asset(
          //   iconUrl,
          //   height: iconSize,
          //   width: iconSize,
          //   color: Color(0xff000000), // Change to any color
          // ),
          // SizedBox(
          //   width: 12,
          // ),
          CustomText(
            text: (heading ?? 'Unknown'),
            color: headingColor,
            fontSize: headingFontSize,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}
