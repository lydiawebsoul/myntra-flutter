// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class CarouselImageSlider extends StatefulWidget {
  @override
  _CarouselImageSliderState createState() => _CarouselImageSliderState();
}

class _CarouselImageSliderState extends State<CarouselImageSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/carousel/bigsale.jpg'),
          AssetImage('assets/carousel/forhim.jpg'),
          AssetImage('assets/carousel/summersale.jpg'),
          AssetImage('assets/carousel/forher.jpg'),
          AssetImage('assets/carousel/flashsale.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.grey,
        indicatorBgPadding: 3.0,
      ),
    );
  }
}
