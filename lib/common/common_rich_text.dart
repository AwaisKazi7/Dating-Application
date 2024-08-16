import 'package:flutter/material.dart';

class CommonRichText extends StatelessWidget {
  final String text1;
  final TextStyle style1;
  final String text2;
  final TextStyle style2;
  final String? text3;
  final TextStyle? style3;
  final TextAlign textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool isThree;

  const CommonRichText({
    super.key,
    required this.text1,
    required this.style1,
    required this.text2,
    required this.style2,
    this.textAlign = TextAlign.start,
    this.maxLines,
    this.overflow,
    this.isThree = false,
    this.text3,
    this.style3, required TextSpan text,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: style1,
          ),
          TextSpan(
            text: text2,
            style: style2,
          ),
          if (isThree)
            TextSpan(
              text: text3,
              style: style3,
            ),
        ],
      ),
      overflow: overflow ?? TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }
}
