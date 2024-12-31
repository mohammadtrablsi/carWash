import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../style/style.dart';

class CustomStatusRow extends StatelessWidget {
  final int numState;
  const CustomStatusRow({super.key, required this.numState});

  @override
  Widget build(BuildContext context) {
    return numState == 0
        ? SizedBox(
            height: 4.h,
          )
        : Row(
            children: [
              PointStateOrder(isGlow: 1 <= numState ? true : false),
              Expanded(
                  child: Container(
                height: 2,
                width: 4.w,
                color: Style.greyColor.withOpacity(0.7),
              )),
              PointStateOrder(isGlow: 2 <= numState ? true : false),
              Expanded(
                  child: Container(
                height: 2,
                width: 2.w,
                color: Style.greyColor.withOpacity(0.7),
              )),
              PointStateOrder(isGlow: 3 <= numState ? true : false),
              Expanded(
                  child: Container(
                height: 2,
                width: 2.w,
                color: Style.greyColor.withOpacity(0.7),
              )),
              PointStateOrder(isGlow: 4 <= numState ? true : false),
            ],
          );
  }
}

class PointStateOrder extends StatelessWidget {
  final bool isGlow;
  const PointStateOrder({super.key, required this.isGlow});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor:
          isGlow ? Style.mainColor : Style.greyColor.withOpacity(0.7),
      radius: 17, //20
      child: isGlow
          ? Icon(
              Icons.check,
              color: Colors.white,
            )
          : const SizedBox(),
    );
  }
}
