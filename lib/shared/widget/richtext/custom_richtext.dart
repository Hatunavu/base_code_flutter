import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hodi/core/constant/constant.dart';
import 'package:hodi/core/style/text_style.dart';
import 'package:hodi/core/theme/theme.dart';

class CustomRichtext extends StatelessWidget {
  final String textSpan1;
  final String textSpan2;
  final dynamic widgetNavigator;
  final bool isAuth;
  final double? fontSize;

  const CustomRichtext(
      {Key? key,
      required this.textSpan1,
      required this.textSpan2,
      this.widgetNavigator,
      this.fontSize,
      this.isAuth = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: isAuth
          ? RichText(
              text: TextSpan(style: AppTextStyle().textBody, children: [
              TextSpan(text: textSpan1),
              TextSpan(
                  text: textSpan2,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      context.router.push(widgetNavigator);
                    },
                  style: AppTextStyle().textBody.copyWith(
                        color: primaryColor,
                      ))
            ]))
          : RichText(
              text: TextSpan(children: [
              TextSpan(
                  text: textSpan1 + ' ',
                  style: subTitleStyle.copyWith(color: primaryColor)),
              TextSpan(
                  text: textSpan2,
                  style:
                      TextStyle(color: greyText, fontSize: fontSize ?? 11.sp))
            ])),
    );
  }
}
