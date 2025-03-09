import 'package:flutter/material.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_text.dart';

class HeadingSubheadingWidget extends StatelessWidget {
  const HeadingSubheadingWidget({
    super.key,
    required this.heading,
    required this.subHeading,
    this.headingFontSize = 14,
    this.subHeadingFontSize = 10,
    this.headingColor = const Color(0xff000000),
    this.subHeadingColor = const Color(0xff000000),
  });

  final String? heading;
  final String? subHeading;

  final double? headingFontSize;
  final double? subHeadingFontSize;
  final Color headingColor;
  final Color subHeadingColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (headingFontSize! * 2) + subHeadingFontSize!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: (heading ?? 'Unknown'),
            color: headingColor,
            fontSize: headingFontSize,
            fontWeight: FontWeight.w500,
          ),
          CustomText(
            text: subHeading ?? '',
            color: subHeadingColor,
            fontSize: subHeadingFontSize,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
