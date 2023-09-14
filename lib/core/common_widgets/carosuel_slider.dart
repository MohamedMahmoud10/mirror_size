import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ReusableCarouselSlider extends StatelessWidget {
  const ReusableCarouselSlider({
    super.key,
    required this.items,
    this.enlargeCenterPage = true,
    this.viewportFraction = 0.9, this.onPageChanged,
  });

  final List<Widget> items;
  final bool enlargeCenterPage;
  final double viewportFraction;
  final Function(int index, CarouselPageChangedReason reason)? onPageChanged;


  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: items,
      options: CarouselOptions(
        onPageChanged:onPageChanged,
        viewportFraction: viewportFraction,
        enlargeCenterPage: enlargeCenterPage,
      ),
    );
  }
}
