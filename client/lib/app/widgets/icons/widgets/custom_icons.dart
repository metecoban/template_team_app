import 'package:client/app/widgets/icons/widgets/icon_size.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    Key? key,
    required this.imagePath,
    this.iconColor,
    this.fit,
    this.alignment,
    this.height = IconSize.medium,
    this.width = IconSize.medium,
  }) : super(key: key);

  final String? imagePath;
  final Color? iconColor;
  final BoxFit? fit;
  final Alignment? alignment;
  final IconSize? height;
  final IconSize? width;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath!,
      height: IconSizeLabel().height(height),
      width: IconSizeLabel().width(width),
      fit: fit ?? BoxFit.cover,
      alignment: alignment ?? Alignment.center,
    );
  }
}
