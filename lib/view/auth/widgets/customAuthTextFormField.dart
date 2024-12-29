import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/style/style.dart';

class CustomAuthtextformfield extends StatelessWidget {
  CustomAuthtextformfield({
    super.key,
    required this.controller,
    required this.label,
    this.vaildator,
    required this.obscureText,
    required this.suffixIcon,
    required this.suffixIconOnPressed,
    required this.outerText,
    this.haveSuffixIcon = false,
  });
  final TextEditingController? controller;
  final String label;
  final String? Function(String?)? vaildator;
  final bool obscureText;
  final IconData? suffixIcon;
  final void Function()? suffixIconOnPressed;
  final String outerText;
  bool haveSuffixIcon = false;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          text(outerText),
          TextFormField(
            keyboardType: TextInputType.text,
            controller: controller,
            obscureText: obscureText == null ? false : obscureText!,
            decoration: InputDecoration(
              filled: true,
              fillColor: Style.lowGreyColor,
              hintText: label,
              hintStyle: TextStyle(
                fontSize: 16.sp,
                color: Color(0xFFa5a5a5),
              ),
              suffixIcon: haveSuffixIcon
                  ? IconButton(
                      icon: Icon(
                        suffixIcon,
                        color: Style.mainColor,
                      ),
                      onPressed: suffixIconOnPressed,
                    )
                  : null,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Style.mainColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Style.lowGreyColor),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.red),
              ),
            ),
            validator: vaildator,
            cursorColor: Style.mainColor,
          ),
        ],
      ),
    );
  }
}

Widget text(String text) {
  return Row(
    children: [
      Padding(
        padding: EdgeInsetsDirectional.only(start: 2.w),
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      )
    ],
  );
}
