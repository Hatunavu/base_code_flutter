import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hodi/core/constant/constant.dart';
import 'package:hodi/core/theme/theme.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle(
      {Key? key,
      required this.title,
      this.color = primaryColor,
      this.titleColor = Colors.white,
      this.onPress})
      : super(key: key);
  final String title;
  final Color? color;
  final Color? titleColor;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.only(bottom: kDefaultPaddingScreen.h),
        alignment: Alignment.centerLeft,
        child: Container(
          margin: EdgeInsets.only(right: kDefaultPaddingScreen.w),
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPaddingWidget.w, vertical: 6.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r), color: color),
          child: Container(
            margin: EdgeInsets.only(top: 2.h),
            child: Text(
              title,
              style: titleStyle.copyWith(
                  color: titleColor, fontWeight: FontWeight.normal),
            ),
          ),
        ),
      ),
    );
  }
}
