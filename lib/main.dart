import 'package:flutter/material.dart';
import 'package:uts_flutter_basic_layouting/components/hero_section.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Layouting',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                HeroSection('assets/images/semarang.jpg'),
                MyContainer(
                  titleSection: TitleSection(
                    name: 'Lawang Sewu',
                    location: 'Semarang, Jawa Tengah',
                    rating: 5.0,
                  ),
                  buttonSection: ButtonSection(),
                  descriptionSection: DescriptionSection(
                    description:
                        'Lawang Sewu ("Seribu Pintu") adalah landmark di Semarang, Jawa Tengah, Indonesia, yang dibangun sebagai kantor pusat Perusahaan Kereta Api Hindia Belanda. Bangunan era kolonial terkenal sebagai peninggalan situs bersejarah di Indonesia, meskipun pemerintah kota Semarang telah berusaha mengubah citra itu.\n\nLawang Sewu dirancang oleh Cosman Citroen, dari perusahaan JF Klinkhamer dan BJ Quendag. Ini dirancang dalam Gaya Hindia Baru, istilah yang diterima secara akademis untuk Rasionalisme Belanda di Hindia. Mirip dengan Rasionalisme Belanda, gaya adalah hasil dari upaya untuk mengembangkan solusi baru untuk mengintegrasikan preseden tradisional (klasisisme) dengan kemungkinan teknologi baru. Ini dapat digambarkan sebagai gaya transisi antara Tradisionalis dan Modernis, dan sangat dipengaruhi oleh desain Berlage.',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
