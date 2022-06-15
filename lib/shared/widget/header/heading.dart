import 'package:flutter/material.dart';
import 'package:hodi/core/constant/constant.dart';
import 'package:hodi/core/theme/theme.dart';

class Heading extends StatelessWidget {
  final String label;
  final bool? paddingBottom;
  const Heading({Key? key, required this.label, this.paddingBottom = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
          top: kDefaultPaddingHeightWidget,
          bottom: paddingBottom == true ? kDefaultPaddingHeightWidget : 0),
      child: Text(
        label,
        style: headingStyle,
      ),
    );
  }
}
