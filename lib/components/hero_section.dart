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
