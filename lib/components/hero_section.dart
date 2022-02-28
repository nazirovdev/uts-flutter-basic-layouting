import 'package:flutter/material.dart';

Widget HeroSection(String imgUrl) {
  return Container(
    width: double.infinity,
    height: 240,
    color: Colors.grey[300],
    child: Image.asset(
      imgUrl,
      fit: BoxFit.cover,
    ),
  );
}

Widget MyContainer({
  required Widget titleSection,
}) {
  return Padding(
    padding: EdgeInsets.all(18.0),
    child: Column(
      children: [
        titleSection,
        SizedBox(
          height: 20,
        ),
      ],
    ),
  );
}

Widget TitleSection({
  required String name,
  required String location,
  required double rating,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(location),
        ],
      ),
      Row(
        children: [
          Icon(
            Icons.favorite,
            color: Colors.amber,
          ),
          SizedBox(
            width: 4.5,
          ),
          Text(
            rating.toString(),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      )
    ],
  );
}
