import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hodi/core/constant/constant.dart';
import 'package:hodi/core/style/text_style.dart';
import 'package:hodi/services/ThemePreferences.dart';

class AppThemes {
  static final appThemeData = {
    AppTheme.lightTheme: ThemeData(
      backgroundColor: Colors.white,
      primaryColor: primaryColor,
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: contentColorLightTheme),
      fontFamily: "Poppins",
      colorScheme: const ColorScheme.light(
        primary: primaryColor,
        secondary: secondaryColor,
        error: errorColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: contentColorLightTheme.withOpacity(0.7),
        unselectedItemColor: contentColorLightTheme.withOpacity(0.32),
        selectedIconTheme: const IconThemeData(color: primaryColor),
        showUnselectedLabels: true,
      ),
    ),
    AppTheme.darkTheme: ThemeData(
      backgroundColor: darkGreyClr,
      primaryColor: primaryColor,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: contentColorLightTheme,
      iconTheme: const IconThemeData(color: contentColorDarkTheme),
      fontFamily: "Poppins",
      colorScheme: const ColorScheme.dark().copyWith(
        primary: primaryColor,
        secondary: secondaryColor,
        error: errorColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: contentColorLightTheme,
        selectedItemColor: Colors.white70,
        unselectedItemColor: contentColorDarkTheme.withOpacity(0.32),
        selectedIconTheme: const IconThemeData(color: primaryColor),
        showUnselectedLabels: true,
      ),
    )
  };
}

enum AppTheme {
  lightTheme,
  darkTheme,
}

TextStyle get textCategoryNameStyle {
  return TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );
}

TextStyle get subHeadingStyle {
  return TextStyle(
      fontSize: 14.sp,
      color: ThemePreferences().isDarkMode ? Colors.white : Colors.grey[500],
      fontWeight: FontWeight.w400);
}

TextStyle get headingStyle {
  return TextStyle(
      fontSize: 16.sp,
      color: ThemePreferences().isDarkMode ? Colors.white : Colors.black,
      fontWeight: FontWeight.w500);
}

TextStyle get headerTitleStyle {
  return TextStyle(
      fontSize: 17.sp,
      color: ThemePreferences().isDarkMode ? Colors.white : Colors.black,
      fontWeight: FontWeight.w500);
}

TextStyle get titleStyle {
  return TextStyle(
      fontSize: 14.sp,
      color: ThemePreferences().isDarkMode ? Colors.white : Colors.black,
      fontWeight: FontWeight.w500);
}

TextStyle get subTitleStyle {
  return TextStyle(
      fontSize: 12.sp,
      color: ThemePreferences().isDarkMode ? Colors.white : Colors.grey[500],
      fontWeight: FontWeight.w400);
}

TextStyle get subTitlePrimaryColorStyle {
  return TextStyle(
      fontSize: 13.sp,
      color: ThemePreferences().isDarkMode ? Colors.white : primaryColor,
      fontWeight: FontWeight.w400);
}

TextStyle get categoryTitleStyle {
  return TextStyle(
      fontSize: 16.sp,
      color: ThemePreferences().isDarkMode ? Colors.white : Colors.black,
      fontWeight: FontWeight.w500);
}

TextStyle get buttonTitleStyle {
  return TextStyle(
      fontSize: 13.sp,
      color: ThemePreferences().isDarkMode ? Colors.white : Colors.black,
      fontWeight: FontWeight.w400);
}

TextStyle get buttonSmallTitleStyle {
  return TextStyle(
      fontSize: 9.sp,
      color: ThemePreferences().isDarkMode ? Colors.white : Colors.white,
      fontWeight: FontWeight.w500);
}

InputDecoration get primaryIputDecoration {
  return InputDecoration(
    errorStyle: TextStyle(fontSize: 10.sp, color: Colors.red),
    fillColor: backgroundTextField,
    filled: true,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    labelStyle: AppTextStyle().textBody,
    suffixIcon: Icon(
      Icons.arrow_drop_down,
      size: 30.sp,
    ),
    floatingLabelStyle: AppTextStyle().textBody.copyWith(color: primaryColor),
    errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.red),
        borderRadius: BorderRadius.circular(kDefaultBorderRadius)),
    focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.red),
        borderRadius: BorderRadius.circular(kDefaultBorderRadius)),
    contentPadding: EdgeInsets.only(top: 0, bottom: 0, left: 20.w, right: 0),
    enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: borderColor),
        borderRadius: BorderRadius.circular(kDefaultBorderRadius)),
    focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: borderColor),
        borderRadius: BorderRadius.circular(kDefaultBorderRadius)),
  );
}
