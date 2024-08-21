import 'package:dating_app/common/common_colors.dart';
import 'package:flutter/material.dart';
import 'common_text_style.dart';
import 'common_text.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double? width;
  final double height;
  final double borderRadius;
  final List<BoxShadow> boxShadow;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final TextStyle textStyle;
  final Color borderColor;
  final double borderWidth;

  final bool isBorderColor;
  const CommonButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = CommonColors.getstartedbt,
    this.textColor = Colors.white,
    this.margin,
    this.width= 101,
    this.height = 51,
    this.borderRadius = 30,
    this.borderWidth = 1,
    this.boxShadow = const [
      BoxShadow(
        color: Colors.grey,
      ),
    ],
    this.textStyle = CommonTextStyle.commonButtonStyle,
    this.isBorderColor = false,
    this.borderColor = Colors.transparent,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(
            color: !isBorderColor
                ? Colors.transparent
                : borderColor, // Change border color when pre ssed
            width: borderWidth,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: boxShadow,
        ),
        child: Center(
          child: CommonText(
            style: textStyle,
            text: text,
          ),
        ),
      ),
    );
  }
}
