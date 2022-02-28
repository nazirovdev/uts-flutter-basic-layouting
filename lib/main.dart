import 'package:flutter/material.dart';
import 'package:uts_flutter_basic_layouting/components/hero_section.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              HeroSection('assets/images/semarang.jpg'),
              MyContainer(
                titleSection: TitleSection(
                  name: 'Lawang Sewu',
                  location: 'Semarang, Jawa Tengah',
                  rating: 5.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
