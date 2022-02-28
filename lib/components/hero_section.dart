import 'package:flutter/material.dart';

// hero section
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

// MyContainer
Widget MyContainer({
  required Widget titleSection,
  required Widget buttonSection,
}) {
  return Padding(
    padding: EdgeInsets.all(18.0),
    child: Column(
      children: [
        titleSection,
        SizedBox(
          height: 20,
        ),
        buttonSection,
      ],
    ),
  );
}

// title section
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

// button section
List<Map> myIcons = [
  {
    'icon': Icon(
      Icons.favorite,
    ),
    'text': Text('CALL'),
  },
  {
    'icon': Icon(
      Icons.favorite,
    ),
    'text': Text('ROUTE'),
  },
  {
    'icon': Icon(
      Icons.favorite,
    ),
    'text': Text('SHARE'),
  },
];

Widget ButtonSection() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: myIcons.map((myIcon) {
      return Column(
        children: [
          myIcon['icon'],
          SizedBox(
            height: 10,
          ),
          myIcon['text'],
        ],
      );
    }).toList(),
  );
}
