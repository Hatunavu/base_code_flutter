import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hodi/core/constant/constant.dart';
import 'package:hodi/core/theme/theme.dart';

class SearchBar extends StatelessWidget {
  const SearchBar(
      {Key? key,
      this.title,
      required this.hintTitle,
      required this.onPressed,
      this.isRectangle = false})
      : super(key: key);

  final String hintTitle;
  final String? title;
  final void Function() onPressed;
  final bool isRectangle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: isRectangle ? 40.h : 30.h,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: kDefaultPaddingWidget.w),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: backgroundTextField,
            borderRadius: BorderRadius.circular(isRectangle ? 12.r : 16.r)),
        child: isRectangle
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 5.h),
                      child: Text(title ?? hintTitle,
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: title != null ? Colors.black : greyText))),
                  Icon(Ionicons.search_outline,
                      size: 20.sp, color: Colors.grey),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Ionicons.search_outline,
                      size: 20.sp, color: Colors.grey),
                  SizedBox(
                    width: 8.w,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5.h),
                    child: Text(title ?? hintTitle,
                        maxLines: 1,
                        style: subTitleStyle.copyWith(
                            fontWeight: FontWeight.normal)),
                  )
                ],
              ),
      ),
    );
  }
}
