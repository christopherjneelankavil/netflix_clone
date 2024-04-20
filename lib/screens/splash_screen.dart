import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix_clone/widgets/bottom_nav.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 4250), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const CustomBottomNavigationBar();
          },
        ),
      );
    });
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Lottie.asset(
            'lib/assets/animations/Animation - 1713643465468.json'),
      ),
    );
  }
}
