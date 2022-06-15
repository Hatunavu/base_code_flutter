import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.w),
      decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: Icon(
        Icons.favorite,
        size: 15.sp,
        color: Colors.red,
      ),
    );
  }
}
