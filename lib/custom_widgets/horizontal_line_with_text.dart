import 'package:flutter/material.dart';

class HorizontalLineWithText extends StatelessWidget {
  final String inputText;

  const HorizontalLineWithText({
    Key? key,
    required this.inputText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: 1.0,
              color: const Color(0xff35383F),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              inputText,
              style: const TextStyle(
                color: Color(0xff000000),
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                letterSpacing: 3,
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 1.0,
              color: const Color(0xff35383F),
            ),
          ),
        ],
      ),
    );
  }
}
