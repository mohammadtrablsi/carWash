import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:washme/core/style/style.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  TextStyle styleOfText = TextStyle(
      fontSize: 18.sp,
      color: Style.textInsideButtonColor,
      fontWeight: FontWeight.w600);
  double radiusOfButton = 22.sp;
  double horizontalPadding = 33.w;
  double verticalPadding = 1.6.h;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(radiusOfButton),
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding, vertical: verticalPadding),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radiusOfButton),
            color: Style.buttonColor),
        child: Text(
          text,
          style: styleOfText,
        ),
      ),
    );
  }
}
