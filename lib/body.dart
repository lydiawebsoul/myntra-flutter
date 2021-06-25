//import 'dart:ui';
// ignore: import_of_legacy_library_into_null_safe
//import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:myntra_app/Myntra_Home/offer.dart';
import 'package:myntra_app/components/carouselslider.dart';
import 'package:myntra_app/components/catlist.dart';
//import 'package:myntra_app/constants.dart';
//import 'package:myntra_app/components/horizontal_listview.dart';
import 'package:myntra_app/components/products.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // Container(
          //   height: 200.0,
          //   child:
          // child: HorizontalList(),
          // ),
          Categorylist(),
          Divider(
            color: Colors.grey,
          ),
          CarouselImageSlider(),
          // ImageCarousel(),
          Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text('TOP PICKS'),
          ),
          Container(
            height: 320.0,
            child: Products(),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              'assets/images/shoebanner.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text('OFFER CORNER'),
          ),
          Container(
            height: 100.0,
            child: OfferCorner(),
          ),
        ],
      ),
    );
  }
}

// class ImageCarousel extends StatefulWidget {
//   @override
//   _ImageCarouselState createState() => _ImageCarouselState();
// }

// class _ImageCarouselState extends State<ImageCarousel> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 300.0,
//       child: new Carousel(
//         boxFit: BoxFit.fill,
//         images: [
//           AssetImage('assets/carousel/bigsale.jpg'),
//           AssetImage('assets/carousel/forhim.jpg'),
//           AssetImage('assets/carousel/summersale.jpg'),
//           AssetImage('assets/carousel/forher.jpg'),
//           AssetImage('assets/carousel/flashsale.jpg'),
//         ],
//         autoplay: true,
//         animationCurve: Curves.fastOutSlowIn,
//         animationDuration: Duration(milliseconds: 1000),
//         dotSize: 4.0,
//         dotColor: Colors.grey,
//         indicatorBgPadding: 3.0,
//       ),
//     );
//   }
// }
