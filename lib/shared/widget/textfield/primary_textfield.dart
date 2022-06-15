import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hodi/core/constant/constant.dart';
import 'package:hodi/core/constant/text.dart';
import 'package:hodi/core/style/text_style.dart';
import 'package:hodi/core/theme/theme.dart';
import 'package:hodi/shared/validators/validators.dart';
import 'package:hodi/translations/locale_keys.g.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PrimaryTextField extends StatelessWidget {
  final String label;
  final bool? isPass;
  final bool? isUsername;
  final bool? isEmail;
  final bool? isPhone;
  final bool isNumberKey;
  final String? hintText;
  final bool? isTitle;
  final bool? isPrice;
  final bool? isDesc;
  String? errorText;
  final bool isSecondTextField;
  final TextEditingController controller;
  final int? maxLines;
  final String? customErrorText;
  final bool isValidate;
  PrimaryTextField(
      {Key? key,
      required this.label,
      this.isPass,
      required this.controller,
      this.isUsername,
      this.isEmail,
      this.isPhone,
      this.errorText,
      this.hintText,
      this.isTitle,
      this.isPrice,
      this.isDesc,
      this.isNumberKey = false,
      this.isSecondTextField = false,
      this.maxLines,
      this.customErrorText,
      this.isValidate = true})
      : super(key: key);

  final ValueNotifier _isShow = ValueNotifier(false);
  final ValueNotifier _isError = ValueNotifier(false);
  static const _locale = 'en';

  String _formatNumber(String s) => NumberFormat.decimalPattern(_locale)
      .format(int.parse(s.isEmpty ? '0' : s));

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: _isShow,
        builder: (context, value, _) {
          return ValueListenableBuilder(
              valueListenable: _isError,
              builder: (context, value, _) {
                _isError.value = errorText != null ? true : false;
                return TextFormField(
                  maxLines: maxLines,
                  autovalidateMode:
                      _isError.value ? AutovalidateMode.always : null,
                  validator: (text) {
                    if (isValidate) {
                      if (isEmail == true
                          ? !Validators.isValidEmail(text!)
                          : isUsername == true || customErrorText != null
                              ? !Validators.isValidUsername(text!)
                              : isPass == true
                                  ? !Validators.isValidPassword(text!)
                                  : isDesc != true &&
                                      !Validators.isValidUsername(text!)) {
                        return customErrorText ??
                            (isUsername == true
                                ? AppText.pleaseEnterFullname
                                : isPass == true
                                    ? LocaleKeys.invalid_pass.tr()
                                    : isTitle == true
                                        ? AppText.pleaseEnterTitle
                                        : isPrice == true
                                            ? AppText.pleaseEnterPrice
                                            : AppText.invalidPhone);
                      }
                    }
                    if (errorText != null && errorText != AppText.sendOtp) {
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        errorText = null;
                        _isError.value = false;
                      });

                      return errorText;
                    }
                    return null;
                  },
                  controller: controller,
                  obscureText: isPass == true ? !_isShow.value : false,
                  style: buttonTitleStyle.copyWith(height: 1.3),
                  keyboardType: isPhone == true || isNumberKey
                      ? const TextInputType.numberWithOptions()
                      : TextInputType.text,
                  onChanged: isPrice == true
                      ? (string) {
                          string = _formatNumber(string.replaceAll(',', ''));
                          controller.value = TextEditingValue(
                            text: string,
                            selection:
                                TextSelection.collapsed(offset: string.length),
                          );
                        }
                      : null,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: backgroundTextField,
                      errorStyle: TextStyle(fontSize: 10.sp, color: Colors.red),
                      hintText: hintText ?? '',
                      hintStyle: buttonTitleStyle.copyWith(color: greyText),
                      prefixIcon: isPhone == true
                          ? const Icon(
                              Icons.phone,
                              color: primaryColor,
                            )
                          : null,
                      labelStyle: titleStyle.copyWith(
                          color: primaryColor, fontWeight: FontWeight.w400),
                      floatingLabelStyle:
                          AppTextStyle().textBody.copyWith(color: primaryColor),
                      errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(
                              isSecondTextField ? kDefaultBorderRadius : 50)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(
                              isSecondTextField ? kDefaultBorderRadius : 50)),
                      contentPadding: EdgeInsets.only(
                          top: 20.h, bottom: 0, left: 20.w, right: 10.w),
                      enabledBorder: OutlineInputBorder(
                          borderSide: isSecondTextField
                              ? const BorderSide(color: greyText)
                              : BorderSide.none,
                          borderRadius: BorderRadius.circular(
                              isSecondTextField ? kDefaultBorderRadius : 50)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: isSecondTextField
                              ? const BorderSide(color: greyText)
                              : BorderSide.none,
                          borderRadius: BorderRadius.circular(
                              isSecondTextField ? kDefaultBorderRadius : 50)),
                      suffixIcon: isPass == true
                          ? GestureDetector(
                              onTap: () {
                                _isShow.value = !_isShow.value;
                              },
                              child: _isShow.value
                                  ? const Icon(
                                      MdiIcons.eye,
                                      color: primaryColor,
                                    )
                                  : const Icon(
                                      MdiIcons.eyeOff,
                                      color: primaryColor,
                                    ))
                          : null),
                );
              });
        });
  }
}
