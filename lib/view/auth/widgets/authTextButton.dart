import 'package:flutter/material.dart';

import '../../../core/style/style.dart';

class AuthTextButton extends StatelessWidget {
  const AuthTextButton({super.key, required this.text, this.onTap, required this.fontSize});
  final String text;
  final void Function()? onTap;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          color: Style.mainColor,
          decoration: TextDecoration.underline,
          decorationColor: Style.mainColor,
        ),
      ),
    );
  }
}
