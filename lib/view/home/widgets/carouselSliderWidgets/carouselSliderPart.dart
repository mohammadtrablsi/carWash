import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:washme/view/home/widgets/imageInCarouselSlider.dart';

import '../../../onBoarding/widgets/animatedPoints.dart';

class CarouselSliderPart extends StatelessWidget {
  const CarouselSliderPart(
      {super.key,
      required this.photoes,
      required this.indexOfCarouselSlider,
      required this.setIndexOfCarouslSlider});
  final List<String> photoes;
  final int indexOfCarouselSlider;
  final setIndexOfCarouslSlider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
            itemCount: photoes.length,
            itemBuilder: (BuildContext context, int index, int pageViewIndex) =>
                ImageInCarouselSlider(
                  image: photoes[index],
                ),
            options: CarouselOptions(
              height: 21.h,
              // aspectRatio: 16/9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              onPageChanged: (index, reason) {
                setIndexOfCarouslSlider(index);
              },
              scrollDirection: Axis.horizontal,
            )),
        SizedBox(
          height: 2.h,
        ),
        AnimatedPoints(indexPage: indexOfCarouselSlider),
      ],
    );
  }
}
