import 'package:client/app/widgets/buttons/widgets/button_color.dart';
import 'package:client/app/widgets/buttons/widgets/button_size.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.onPressed,
    this.buttonSize = ButtonSize.medium,
    required this.text,
    this.padding,
    this.child,
    this.minimumSize,
    this.color,
  }) : super(key: key);

  final String text;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPressed;
  final Widget? child;
  final Size? minimumSize;
  final ButtonSize? buttonSize;
  final ButtonColor? color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: padding,
        textStyle: const TextStyle(
          decoration: TextDecoration.underline,
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        fixedSize: ButtonSizeLabel().size(buttonSize),
      ),
      onPressed: onPressed,
      child: child ??
          Text(text,
              style: TextStyle(
                color: ButtonColorLabel().color(color),
              )),
    );
  }
}
