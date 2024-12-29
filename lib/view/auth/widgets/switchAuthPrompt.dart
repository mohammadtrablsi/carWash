import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/statics/routes.dart';
import 'authTextButton.dart';

class SwitchAuthprompt extends StatelessWidget {
  const SwitchAuthprompt(
      {super.key,
      required this.textForTextButton,
      required this.text,
      this.onTap});
  final String textForTextButton;
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AuthTextButton(text: textForTextButton, onTap: onTap, fontSize: 14.sp),
        SizedBox(
          width: 1.w,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 15.sp),
        ),
      ],
    );
  }
}
