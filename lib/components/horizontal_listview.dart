import 'package:flutter/material.dart';

class horizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cat/Accessory.png',
            image_caption: "Accessory",
          ),
          Category(
            image_location: 'images/cat/dresses.png',
            image_caption: "Dresses",
          ),
          Category(
            image_location: 'images/cat/short.png',
            image_caption: "Shorts",
          ),
          Category(
            image_location: 'images/cat/shirt.png',
            image_caption: "Shirt",
          ),
          Category(
            image_location: 'images/cat/footwear.png',
            image_caption: "Footwears",
          ),
          Category(
            image_location: 'images/cat/Wellness.png',
            image_caption: "Wellness",
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category({this.image_location, this.image_caption});
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
              image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                image_caption,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
