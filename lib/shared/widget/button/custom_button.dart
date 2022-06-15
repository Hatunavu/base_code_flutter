import 'package:flutter/material.dart';
import 'package:hodi/core/constant/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.label,
      required this.onTap,
      this.icon,
      this.width = 120,
      this.height = 60,
      this.borderRadius = 20})
      : super(key: key);
  final String label;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Function() onTap;
  final Icon? icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: primaryClr,
          borderRadius: BorderRadius.circular(borderRadius!),
        ),
        child: Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
