import 'package:flutter/material.dart';

import '../config/app_color.dart';

class LPBaseContainer extends StatelessWidget {
  const LPBaseContainer({
    super.key,
    required this.child,
    required this.isMobile,
    this.color,
    this.backgroundImageName,
    this.padding,
    this.bodyMaxWidth,
  });

  final Widget child;
  final bool isMobile;
  final Color? color;
  final String? backgroundImageName;
  final EdgeInsetsGeometry? padding;
  final double? bodyMaxWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? AppColor.backgroundNavy,
        image: backgroundImageName != null
            ? DecorationImage(
                image: AssetImage(backgroundImageName!),
                fit: BoxFit.fill,
              )
            : null,
      ),
      padding: padding ??
          (isMobile
              ? const EdgeInsets.symmetric(
                  vertical: 64,
                  horizontal: 32,
                )
              : const EdgeInsets.symmetric(
                  vertical: 64,
                  horizontal: 64,
                )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: bodyMaxWidth ?? 800),
            child: child,
          ),
        ],
      ),
    );
  }
}
