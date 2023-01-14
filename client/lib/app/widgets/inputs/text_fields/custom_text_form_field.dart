import 'package:client/core/constans/color_constants.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    this.controller,
    this.hintText,
    this.onChanged,
    this.hintTextColor,
    this.suffixIcon,
    this.prefixIcon,
    this.enabledBorder,
    this.maxLength,
    this.keyboardType,
    this.maxLines,
    this.labelText,
    this.labelTextColor,
    this.focusedBorder,
    this.onTap,
    this.validator,
    this.iconColor,
    this.focusedBorderColor,
    this.helpTextLabel = HelpText.off,
    this.helpTextLabelValue = 'Place Holde Help Text',
  }) : super(key: key);

  final int? maxLines;

  final int? maxLength;
  final Color? hintTextColor;
  final Color? labelTextColor;
  final Color? iconColor;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final String? hintText;
  final String? labelText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final VoidCallback? onTap;
  final Color? focusedBorderColor;
  final HelpText? helpTextLabel;
  final String? helpTextLabelValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          key: key,
          controller: controller,
          onTap: onTap,
          onChanged: onChanged,
          validator: validator,
          style: TextStyle(
            color: ColorConstant.instance.dark0,
          ),
          keyboardType: keyboardType,
          maxLength: maxLength,
          decoration: InputDecoration(
            helperText: helpTextLabel == HelpText.off
                ? HelpTextLabel.off()
                : HelpTextLabel.on(helpTextLabelValue!),
            hintText: hintText,
            hintStyle: TextStyle(
              color: hintTextColor,
            ),
            labelText: labelText,
            labelStyle: TextStyle(
              color: labelTextColor ?? ColorConstant.instance.dark0,
            ),
            enabledBorder: border(
              borderSideColor: ColorConstant.instance.dark4,
            ),
            focusedBorder: border(
              borderSideColor:
                  focusedBorderColor ?? ColorConstant.instance.purple2,
            ),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
          ),
        ),
      ],
    );
  }

  OutlineInputBorder border({required Color borderSideColor}) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(16),
      ),
      borderSide: BorderSide(color: borderSideColor),
    );
  }
}

enum HelpText {
  on,
  off,
}

class HelpTextLabel {
  HelpTextLabel();

  static String on(String helpTextLabelValue) => helpTextLabelValue;
  static String off() => 'Help Text Not Working';
}