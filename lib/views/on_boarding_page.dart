import 'package:flutter/material.dart';

import 'package:iti_final_project/views/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});
  static String id = 'On Boarding Page';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 300,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Welcome to ITI E-Commerce App',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Sign in to save your favourites\nSearch by categories\nShop what you want ,anytime',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () async {
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('isOpenedBefore', true);
                if (context.mounted) {
                  Navigator.pushReplacementNamed(context, LoginPage.id);
                }
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xFF042f67),
                ),
                child: const Icon(
                  Icons.arrow_right,
                  color: Color(0xFFFFFFFF),
                  size: 50,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
