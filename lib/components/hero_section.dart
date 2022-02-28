import 'package:flutter/material.dart';

// hero section
Widget HeroSection(String imgUrl) {
  return Container(
    width: double.infinity,
    height: 240,
    decoration: BoxDecoration(
      color: Colors.grey[300],
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(15),
        bottomRight: Radius.circular(15),
      ),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(15),
        bottomRight: Radius.circular(15),
      ),
      child: Image.asset(
        imgUrl,
        fit: BoxFit.cover,
      ),
    ),
  );
}

// MyContainer
Widget MyContainer({
  required Widget titleSection,
  required Widget buttonSection,
  required Widget descriptionSection,
}) {
  return Padding(
    padding: EdgeInsets.all(30.0),
    child: Column(
      children: [
        titleSection,
        SizedBox(
          height: 30,
        ),
        buttonSection,
        SizedBox(
          height: 30,
        ),
        descriptionSection,
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
              fontSize: 18,
              fontWeight: FontWeight.w900,
              letterSpacing: 1,
              color: Colors.lightGreen,
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
      color: Colors.lightGreen,
      size: 30,
    ),
    'text': Text(
      'CALL',
      style: TextStyle(
        color: Colors.lightGreen,
      ),
    ),
  },
  {
    'icon': Icon(
      Icons.near_me,
      color: Colors.lightGreen,
      size: 30,
    ),
    'text': Text(
      'ROUTE',
      style: TextStyle(
        color: Colors.lightGreen,
      ),
    ),
  },
  {
    'icon': Icon(
      Icons.share,
      color: Colors.lightGreen,
      size: 30,
    ),
    'text': Text(
      'SHARE',
      style: TextStyle(
        color: Colors.lightGreen,
      ),
    ),
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
            height: 5,
          ),
          myIcon['text'],
        ],
      );
    }).toList(),
  );
}

// description section
Widget DescriptionSection({required String description}) {
  return Text(
    description,
    textAlign: TextAlign.justify,
  );
}
