import 'package:flutter/material.dart';
import 'package:uts_flutter_basic_layouting/components/button_section.dart';
import 'package:uts_flutter_basic_layouting/components/description_section.dart';
import 'package:uts_flutter_basic_layouting/components/hero_section.dart';
import 'package:uts_flutter_basic_layouting/components/my_container_section.dart';
import 'package:uts_flutter_basic_layouting/components/title_section.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
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
                heroSection('assets/images/semarang.jpg'),
                myContainer(
                  titleSection: titleSection(
                    name: 'Lawang Sewu',
                    location: 'Semarang, Jawa Tengah',
                    rating: 5.0,
                  ),
                  buttonSection: buttonSection(),
                  descriptionSection: descriptionSection(
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
