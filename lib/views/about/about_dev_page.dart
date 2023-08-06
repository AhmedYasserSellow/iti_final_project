import 'package:flutter/material.dart';
import 'package:iti_final_project/views/widgets/about_developer.dart';

class AboutDevPage extends StatelessWidget {
  const AboutDevPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        const Text(
          'App Developers',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        aboutDev(
          img: 'assets/ahmed_yasser.png',
          name: 'Ahmed Yasser Sellow',
          whatsappUrl: 'https://wa.me/201028825215',
          githubUrl: 'https://github.com/AhmedYasserSellow',
        ),
        aboutDev(
          img: 'assets/karim.png',
          name: 'Karim Mohamed Farouk',
          whatsappUrl: 'https://wa.me/201010661328',
          githubUrl: 'https://github.com/KarimMohamed74/',
        ),
        aboutDev(
          img: 'assets/ahmed_zain.png',
          name: 'Ahmed Zain El Abidine Abd Elaleem',
          whatsappUrl: 'https://wa.me/201090986942',
          githubUrl: 'https://github.com/ahmedzein74',
        ),
        aboutDev(
          img: 'assets/ahmed_abo_bakr.png',
          name: 'Ahmed Abo Bakr Mohamed',
          whatsappUrl: 'https://wa.me/201093509828',
          githubUrl: 'https://github.com/Ahmedbakr122',
        ),
      ],
    );
  }
}
