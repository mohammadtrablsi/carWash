import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/widget/customCircleCheckBox.dart';
import '../../widgets/authTextButton.dart';

class AgreeOnTerms extends StatelessWidget {
  const AgreeOnTerms(
      {super.key,
      this.onTap,
      required this.isChecked,
      required this.text,
      required this.textForTextButton});
  final void Function()? onTap;
  final bool isChecked;
  final String text;
  final String textForTextButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        AuthTextButton(text: textForTextButton, onTap: () {}, fontSize: 16.sp),
        SizedBox(
          width: 2.w,
        ),
        Text(text),
        SizedBox(
          width: 2.w,
        ),
        CustomCirclecheckbox(
          onTap: onTap,
          isChecked: isChecked,
        ),
      ],
    );
  }
}
