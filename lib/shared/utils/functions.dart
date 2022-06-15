import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hodi/core/constant/constant.dart';
import 'package:hodi/core/theme/theme.dart';

unfocus(BuildContext context) {
  FocusScope.of(context).unfocus();
  TextEditingController().clear();
}

loadingShowDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      });
}

late Timer _timer;
void dialog(BuildContext context, String title) {
  showDialog(
      context: context,
      builder: (context) {
        _timer = Timer(const Duration(seconds: 2), () {
          Navigator.of(context).pop();
        });
        return AlertDialog(
          contentPadding: EdgeInsets.symmetric(
              vertical: kDefaultPaddingHeightScreen,
              horizontal: kDefaultPaddingWidthScreen),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.info_outline),
              SizedBox(
                height: 5.h,
              ),
              Text(
                title,
                style: subTitleStyle.copyWith(color: Colors.black),
                textAlign: TextAlign.center,
              )
            ],
          ),
        );
      }).then((val) {
    if (_timer.isActive) {
      _timer.cancel();
    }
  });
}
