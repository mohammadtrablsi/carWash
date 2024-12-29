import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/style/style.dart';

class AuthHeaderTexts extends StatelessWidget {
  const AuthHeaderTexts({super.key, required this.title, required this.text});
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23.sp,
              color: Colors.black87),
        ),
        SizedBox(
          height: 1.h,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Style.greyColor,
            fontSize: 16.sp,
          ),
        ),
      ],
    );
  }
}
