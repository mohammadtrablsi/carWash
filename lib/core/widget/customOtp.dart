import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:washme/core/style/style.dart';

class CustomOtp extends StatelessWidget {
  const CustomOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      numberOfFields: 5,
      borderColor: Style.mainColor,
      decoration: InputDecoration(filled: true, fillColor: Style.greyColor),
      showFieldAsBox: true,
      onCodeChanged: (String code) {},
      filled: true,
      fillColor: Style.lowGreyColor,
      onSubmit: (String verificationCode) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Verification Code"),
                content: Text('Code entered is $verificationCode'),
              );
            });
      },
    );
  }
}
