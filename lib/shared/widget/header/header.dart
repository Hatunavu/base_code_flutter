import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hodi/core/constant/constant.dart';
import 'package:hodi/core/theme/theme.dart';

class Header extends StatelessWidget {
  const Header(
      {Key? key,
      this.leading,
      this.title,
      this.leftWidget,
      this.trailing,
      this.isBack = false})
      : super(key: key);
  final Widget? leading;
  final String? title;
  final Widget? leftWidget;
  final Widget? trailing;
  final bool? isBack;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPaddingScreen.w),
      margin: EdgeInsets.symmetric(vertical: kDefaultPaddingScreen.h),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Visibility(
                      visible: isBack == true,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 4.h, right: 6.w),
                        child: GestureDetector(
                            onTap: () {
                              context.router.pop();
                            },
                            child: const Icon(
                              Ionicons.chevron_back_outline,
                              size: 23,
                              color: Colors.black,
                            )),
                      )),
                  Visibility(
                      visible: leading != null,
                      child: Container(
                          margin:
                              EdgeInsets.only(right: kDefaultPaddingWidget.w),
                          child: leading ?? Container())),
                  Visibility(
                      visible: leftWidget != null,
                      child: leftWidget ?? Container())
                ],
              ),
              Visibility(
                visible: trailing != null,
                child: trailing ?? Container(),
              )
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                    visible: title != null,
                    child: Text(
                      title ?? "",
                      style: headerTitleStyle.copyWith(
                          fontWeight: FontWeight.w600),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
