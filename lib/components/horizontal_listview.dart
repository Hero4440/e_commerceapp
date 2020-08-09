import 'package:flutter/material.dart';

class horizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cat/shorts.png',
            image_caption: 'short',
          ),
          Category(
            image_location: 'images/cat/dress.png',
            image_caption: 'dress',
          ),
          Category(
            image_location: 'images/cat/shorts.png',
            image_caption: 'short',
          ),
          Category(
            image_location: 'images/cat/dress.png',
            image_caption: 'dress',
          ),
          Category(
            image_location: 'images/cat/shorts.png',
            image_caption: 'short',
          ),
          Category(
            image_location: 'images/cat/dress.png',
            image_caption: 'dress',
          ),
          Category(
            image_location: 'images/cat/shorts.png',
            image_caption: 'short',
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
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 80.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption),
            ),
          ),
        ),
      ),
    );
  }
}
