import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hodi/core/constant/constant.dart';
import 'package:hodi/core/style/text_style.dart';

class ButtonPrimary extends StatelessWidget {
  final String title;
  final void Function()? onPressed;

  const ButtonPrimary({Key? key, required this.title, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 42.h,
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(5)),
        child: Center(
            child: Text(
          title,
          style: AppTextStyle().textButtonPrimary,
        )),
      ),
    );
  }
}
