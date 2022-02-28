import 'package:flutter/material.dart';

List<Map> myIcons = [
  {
    'icon': const Icon(
      Icons.favorite,
      color: Colors.lightGreen,
      size: 30,
    ),
    'text': const Text(
      'CALL',
      style: TextStyle(
        color: Colors.lightGreen,
      ),
    ),
  },
  {
    'icon': const Icon(
      Icons.near_me,
      color: Colors.lightGreen,
      size: 30,
    ),
    'text': const Text(
      'ROUTE',
      style: TextStyle(
        color: Colors.lightGreen,
      ),
    ),
  },
  {
    'icon': const Icon(
      Icons.share,
      color: Colors.lightGreen,
      size: 30,
    ),
    'text': const Text(
      'SHARE',
      style: TextStyle(
        color: Colors.lightGreen,
      ),
    ),
  },
];

Widget buttonSection() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: myIcons.map((myIcon) {
      return Column(
        children: [
          myIcon['icon'],
          const SizedBox(
            height: 5,
          ),
          myIcon['text'],
        ],
      );
    }).toList(),
  );
}
