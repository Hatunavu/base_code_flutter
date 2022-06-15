import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hodi/core/constant/constant.dart';
import 'package:hodi/core/theme/theme.dart';

class PrimaryButton extends StatelessWidget {
  final void Function()? onPressed;
  final String label;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  final double? maxWidth;
  final double? maxHeight;
  final TextStyle? style;
  final Color? borderColor;
  final double? borderWidth;
  final Color? textColor;
  const PrimaryButton({
    Key? key,
    this.onPressed,
    required this.label,
    this.borderRadius,
    this.backgroundColor,
    this.borderColor = Colors.transparent,
    this.textColor = Colors.white,
    this.borderWidth = 0.0,
    this.maxWidth = double.infinity,
    this.maxHeight = 45,
    this.style,
  }) : super(key: key);

  const PrimaryButton.outline({
    Key? key,
    this.onPressed,
    required this.label,
    this.borderRadius,
    this.backgroundColor = Colors.transparent,
    this.borderColor = primaryColor,
    this.textColor = primaryColor,
    this.borderWidth = 1.0,
    this.maxWidth = double.infinity,
    this.maxHeight = 45,
    this.style,
  }) : super(key: key);

  const PrimaryButton.grey(
      {Key? key,
      this.onPressed,
      required this.label,
      this.borderRadius,
      this.backgroundColor = buttonGreyColor,
      this.maxWidth = double.infinity,
      this.maxHeight = 20,
      this.style,
      this.borderColor = Colors.transparent,
      this.borderWidth = 0.0,
      this.textColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: borderRadius,
      onTap: onPressed ?? () {},
      child: Container(
        width: maxWidth,
        height: maxHeight!,
        decoration: BoxDecoration(
          color: backgroundColor ?? Theme.of(context).primaryColor,
          border: Border.all(width: borderWidth!, color: borderColor!),
          borderRadius: borderRadius ?? BorderRadius.circular(50),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 8.w,
            vertical: 8.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(label, style: buttonTitleStyle.copyWith(color: textColor)),
            ],
          ),
        ),
      ),
    );
  }
}
