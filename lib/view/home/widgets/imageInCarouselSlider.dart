import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ImageInCarouselSlider extends StatelessWidget {
  const ImageInCarouselSlider({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: 80.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
