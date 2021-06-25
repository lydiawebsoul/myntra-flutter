import 'package:flutter/material.dart';
//import 'package:myntra_app/constants.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/caticons/offer.png',
            image_caption: 'OFFERS',
          ),
          Category(
            image_location: 'assets/caticons/men.png',
            image_caption: 'MEN',
          ),
          Category(
            image_location: 'assets/caticons/women.png',
            image_caption: 'WOMEN',
          ),
          Category(
            image_location: 'assets/caticons/kids.png',
            image_caption: 'KIDS',
          ),
          Category(
            image_location: 'assets/caticons/beauty.jpg',
            image_caption: 'BEAUTY',
          ),
          Category(
            image_location: 'assets/caticons/footwear.png',
            image_caption: 'FOOTWEAR',
          ),
          Category(
            image_location: 'assets/caticons/jewellery.png',
            image_caption: 'JEWELLERY',
          ),
          Category(
            image_location: 'assets/caticons/home.png',
            image_caption: 'HOME',
          ),
          Category(
            image_location: 'assets/caticons/gadgets.png',
            image_caption: 'GADGETS',
          ),
          Category(
            image_location: 'assets/caticons/season.jpg',
            image_caption: 'NEW SEASON',
          ),
        ],
      ),
    );
  }
}

class Category extends StatefulWidget {
  // ignore: non_constant_identifier_names
  final String image_location;
  // ignore: non_constant_identifier_names
  final String image_caption;

  Category({
    // ignore: non_constant_identifier_names
    required this.image_location,
    // ignore: non_constant_identifier_names
    required this.image_caption,
  });

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              widget.image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                widget.image_caption,
                style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
