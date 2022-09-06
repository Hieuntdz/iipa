import 'package:flutter/material.dart';

import 'app_color.dart';

class PossimSolidButton extends StatelessWidget {
  const PossimSolidButton(
      {Key? key,
      required this.title,
      this.callBack,
      this.textColor,
      this.backGroundColor,
      this.rippleAnimation = true,
      this.onLongPress,
      this.radius,
      this.margin,
      this.textStyles,
      this.isEnable = true,
      this.padding,
      this.width})
      : super(key: key);

  final String title;
  final Function()? callBack;
  final Function()? onLongPress;
  final Color? textColor;
  final Color? backGroundColor;
  final bool? rippleAnimation;
  final double? radius;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final TextStyle? textStyles;
  final bool? isEnable;
  final double? width;

  @override
  Widget build(BuildContext context) {
    if (rippleAnimation == true && isEnable != false) {
      return TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          shadowColor: Colors.transparent,
          elevation: 0,
          backgroundColor: Colors.transparent,
          splashFactory: InkRipple.splashFactory,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          // animationDuration: const Duration(milliseconds: 100),
        ),
        onPressed: onPressed,
        onLongPress: onLongPress,
        child: Container(
          width: width,
          padding: padding ?? const EdgeInsets.symmetric(vertical: 20),
          alignment: Alignment.center,
          margin: margin ?? const EdgeInsets.symmetric(horizontal: 45),
          decoration: BoxDecoration(
            color: backGroundColor ?? AppColors.primaryColor,
            borderRadius: BorderRadius.circular(radius ?? 16),
            boxShadow: [
              BoxShadow(
                color: AppColors.shadowColor,
                blurRadius: 3,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Text(title, style: textStyles),
        ),
      );
    } else {
      return GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: padding ?? const EdgeInsets.symmetric(vertical: 20),
          margin: margin ?? const EdgeInsets.symmetric(horizontal: 45),
          width: width,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isEnable == true
                ? (backGroundColor ?? AppColors.primaryColor)
                : AppColors.disableColor,
            borderRadius: BorderRadius.circular(radius ?? 16),
            boxShadow: [
              BoxShadow(
                color: AppColors.shadowColor,
                blurRadius: 3,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Text(title, style: textStyles),
        ),
      );
    }
  }

  void onPressed() {
    callBack?.call();
  }
}
