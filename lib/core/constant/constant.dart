import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const primaryColor = Color(0xFFD7AF65);
Color primaryColor10 = primaryColor.withOpacity(0.1);
Color primaryColor30 = primaryColor.withOpacity(0.3);
Color primaryColor70 = primaryColor.withOpacity(0.7);
Color primaryColor2 = primaryColor.withOpacity(0.02);
const buttonColorSecondary = Color(0xFF3B6311);

const backgroundItemColor = Color(0xFFEDEFF4);
const disableColor = Colors.black12;
const disableText = Colors.black45;
const greyText = Color(0xFFB4B4B4);
const categoryEvenBackground = Color(0xFFEDEFF4);
const categoryOddBackground = Color(0xFFDEDEDE);

const secondaryColor = Color(0xff18223C);
const thirdColor = Color(0xff253757);
const buttonGreyColor = Color.fromRGBO(237, 239, 244, 0.6);
const contentColorLightTheme = Color(0xFF1D1D35);
const contentColorDarkTheme = Color(0xFFF5FCF9);
const kWarninngColor = Color(0xFFF3BB1C);
const errorColor = Color(0xFFF03738);
const bottomUnselectColor = Color(0xFF222222);
const backgroundColor = Color(0xFFF9F9FF);
const backgroundColorHome = Color(0xFF000000);
const authPrimaryColor = Color(0xFFFFBD73);
const backgroundTextField = Color(0xFFF4F5F7);

const bluishClr = Color(0xFF4e5ae8);
const yellowClr = Color(0XFFFFB746);
const pinkClr = Color(0XFFff4667);
const white = Colors.white;
const primaryClr = bluishClr;
const darkGreyClr = Color(0xFF121212);
const darkHeaderClr = Color(0xFF424242);
const itemSlide = Color(0XFFEDEFF4);
const dividerColor = Color(0xFFDDDDDD);
Color partBackgroundColor = secondaryColor.withOpacity(0.4);
Color itemColor = secondaryColor.withOpacity(0.45);
const borderColor = Color(0xFFAFAFAF);
final baseBottom = const Color(0xFF000000).withOpacity(0.15);
const slideColor = Color(0xFFFFBC00);

const kDefaultPadding = 20.0;
final kDefaultPaddingWidth = 20.w;
final kDefaultPaddingHeight = 20.h;
const kDefaultPaddingScreen = 10.0;
final kDefaultPaddingWidthScreen = 10.w;
final kDefaultPaddingHeightScreen = 10.h;
const kDefaultPaddingWidget = 16.0;
final kDefaultPaddingWidthWidget = 16.w;
final kDefaultPaddingHeightWidget = 16.h;

final kDefaultBorderRadius = 12.r;
double borderRadiusSecond = 20.sp;
const createProductLand = 10;
const createQuestionLand = 10;

//text color
const colorTitle = Color(0xFF222222);
const colorBody = Color(0xFF777777);

class Themes {
  static final light =
      ThemeData(primaryColor: primaryClr, brightness: Brightness.light);
  static final dark = ThemeData(
    primaryColor: darkGreyClr,
    brightness: Brightness.dark,
  );
}
