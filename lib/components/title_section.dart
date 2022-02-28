import 'package:flutter/material.dart';

Widget titleSection({
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
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w900,
              letterSpacing: 1,
              color: Colors.lightGreen,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(location),
        ],
      ),
      Row(
        children: [
          const Icon(
            Icons.favorite,
            color: Colors.amber,
          ),
          const SizedBox(
            width: 4.5,
          ),
          Text(
            rating.toString(),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      )
    ],
  );
}
