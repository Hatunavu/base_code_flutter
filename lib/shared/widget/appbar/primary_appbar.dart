import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hodi/core/theme/theme.dart';

PreferredSizeWidget primaryAppBar(
    {required BuildContext context,
    required String title,
    bool isBack = true}) {
  return AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    elevation: 0,
    title: Text(
      title,
      style: headingStyle,
    ),
    leading: isBack
        ? IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            enableFeedback: false,
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              context.router.pop();
            },
          )
        : null,
  );
}
