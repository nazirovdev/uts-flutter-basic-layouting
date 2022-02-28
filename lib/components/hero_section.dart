import 'package:flutter/material.dart';

// hero section
Widget heroSection(String imgUrl) {
  return Container(
    width: double.infinity,
    height: 240,
    decoration: BoxDecoration(
      color: Colors.grey[300],
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(15),
        bottomRight: Radius.circular(15),
      ),
    ),
    child: ClipRRect(
      borderRadius: const BorderRadius.only(
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
