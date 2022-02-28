import 'package:flutter/material.dart';

Widget myContainer({
  required Widget titleSection,
  required Widget buttonSection,
  required Widget descriptionSection,
}) {
  return Padding(
    padding: const EdgeInsets.all(30.0),
    child: Column(
      children: [
        titleSection,
        const SizedBox(
          height: 30,
        ),
        buttonSection,
        const SizedBox(
          height: 30,
        ),
        descriptionSection,
      ],
    ),
  );
}
