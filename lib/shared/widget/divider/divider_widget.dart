import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hodi/core/constant/constant.dart';

class DividerWidget extends StatelessWidget {
  final bool isSmall;
  const DividerWidget({Key? key, this.isSmall = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isSmall ? 0.5.h : 10.h,
      color: secondaryColor.withOpacity(0.5),
    );
  }
}
