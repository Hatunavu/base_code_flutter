import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hodi/core/constant/constant.dart';

class InkWellButton extends StatelessWidget {
  final void Function()? onTapped;
  final double? borderRadius;
  final Color? backgroundColor;
  final Border? border;
  final Color? textColor;
  final String label;

  const InkWellButton(
      {Key? key,
      this.onTapped,
      this.border,
      required this.label,
      this.textColor = Colors.white,
      this.borderRadius,
      this.backgroundColor = primaryColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped ?? () {},
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: primaryColor,
            border: border,
            borderRadius:
                BorderRadius.circular(borderRadius ?? kDefaultBorderRadius)),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 8.w,
            vertical: 10.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(label, style: TextStyle(color: textColor)),
            ],
          ),
        ),
      ),
    );
  }
}
