import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../themes/screen_utility.dart';

class RegisterField extends StatelessWidget {
  const RegisterField({
    Key? key,
    this.labelText,
    this.hintText,
    this.suffixIcon,
    this.filled = false,
    this.keyboardType,
    this.obsecureText = false,
    this.thinBorder = true,
    this.controller,
    this.validator,
    this.autovalidateMode,
    this.maxLines = 1,
    this.maxLength,
    this.onChanged,
    this.formatters,
    this.prefixIcon,
    this.hideBorder = false,
    this.removePadding = false,
    this.textInputAction,
    this.prefixWithDivider = false,
    this.enabled = true,
    this.makeContentPadding = false,
    this.enableField = false,
    this.noLocalHintText,
    this.errorSize = 6.5,
    this.onTap,
    this.onCompleted,
    this.onFieldSubmitted,
    this.textAlign,
    this.textSize = 18,
    this.contentPadding,
    this.errorText,
    this.fillColor,
  }) : super(key: key);
  final String? labelText;
  final String? hintText;
  final String? noLocalHintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool prefixWithDivider;
  final TextInputType? keyboardType;
  final bool obsecureText;
  final bool thinBorder;
  final bool enabled;
  final TextEditingController? controller;
  final AutovalidateMode? autovalidateMode;
  final int? maxLines;
  final int? maxLength;
  final void Function(String?)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final void Function()? onCompleted;
  final List<TextInputFormatter>? formatters;
  final String? Function(String?)? validator;
  final bool removePadding;
  final bool hideBorder;
  final TextInputAction? textInputAction;
  final bool makeContentPadding;
  final void Function()? onTap;
  final bool filled;
  final bool enableField;
  final num errorSize;
  final TextAlign? textAlign;
  final num textSize;
  final EdgeInsetsGeometry? contentPadding;
  final String? errorText;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    log('error $errorText');
    return Padding(
      padding: removePadding
          ? EdgeInsets.zero
          : EdgeInsets.symmetric(
              horizontal: 10.r,
              vertical: ScreenUtil().setHeight(10),
            ),
      child: TextFormField(
        style: TextStyle(
          fontSize: textSize.r,
        ),
        textAlign: textAlign ?? TextAlign.start,
        onTap: onTap,
        readOnly: !enabled,
        textInputAction: textInputAction,
        maxLength: maxLength,
        maxLines: maxLines,
        inputFormatters:
            keyboardType == TextInputType.phone && formatters == null
                ? [
                    FilteringTextInputFormatter.allow(RegExp('[0-9٠-٩]')),
                  ]
                : formatters,
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        onEditingComplete: onCompleted,
        autovalidateMode: autovalidateMode,
        controller: controller,
        validator: validator,
        obscureText: obsecureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(15.r),
          counterText: '',
          filled: filled,
          enabled: enabled,
          fillColor: fillColor ?? Colors.white,
          labelText: labelText,
          hintText: noLocalHintText ?? hintText,
          errorStyle: TextStyle(
            fontSize: errorText != null ? 0 : ScreenUtil().setSp(errorSize),
            color: Theme.of(context).errorColor,
          ),
          labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color:
                thinBorder ? MainStyle.darkGreyColor : MainStyle.darkGreyColor,
          ),
          hintStyle: TextStyle(
            fontSize: 13.r,
            // fontWeight: FontWeight.bold,
            color: MainStyle.darkGreyColor,
          ),
          border: hideBorder
              ? null
              : OutlineInputBorder(
                  borderRadius: BorderRadius.circular(thinBorder ? 12 : 25),
                  borderSide: BorderSide(
                    width: thinBorder ? 1 : 2,
                    color: thinBorder
                        ? MainStyle.darkGreyColor
                        : MainStyle.darkGreyColor,
                  ),
                ),
          enabledBorder: hideBorder
              ? null
              : OutlineInputBorder(
                  borderRadius: BorderRadius.circular(thinBorder ? 12 : 25),
                  borderSide: BorderSide(
                    width: thinBorder ? 1 : 2,
                    color: thinBorder
                        ? MainStyle.darkGreyColor
                        : MainStyle.darkGreyColor,
                  ),
                ),
          disabledBorder: hideBorder
              ? null
              : OutlineInputBorder(
                  borderRadius: BorderRadius.circular(thinBorder ? 12 : 25),
                  borderSide: BorderSide(
                    width: thinBorder ? 1 : 2,
                    color: thinBorder
                        ? MainStyle.darkGreyColor
                        : MainStyle.darkGreyColor,
                  ),
                ),
          errorBorder: hideBorder
              ? null
              : OutlineInputBorder(
                  borderRadius: BorderRadius.circular(thinBorder ? 12 : 25),
                  borderSide: BorderSide(
                    width: thinBorder ? 1 : 2,
                    color: Theme.of(context).errorColor,
                  ),
                ),
          focusedBorder: hideBorder
              ? null
              : OutlineInputBorder(
                  borderRadius: BorderRadius.circular(thinBorder ? 12 : 25),
                  borderSide: BorderSide(
                    width: thinBorder ? 1 : 2,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon != null && prefixWithDivider
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: prefixIcon,
                      ),
                      Container(
                        width: ScreenUtil().setWidth(1),
                        height: ScreenUtil().setHeight(30),
                        color: Theme.of(context).textTheme.headline2?.color,
                      ),
                    ],
                  ),
                )
              : prefixIcon,
        ),
      ),
    );
  }
}
