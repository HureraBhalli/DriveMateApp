import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xff6763EE),
    body: Center( // This will center the Column content vertically and horizontally
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // This will center the Column content vertically
        children: [
          Spacer(flex: 2), // Use Spacer to create flexible spaces between widgets
          Image.asset(
            'assets/icons/SplashLogo.png',
          ),
          SvgPicture.asset('assets/icons/DriveText.svg'),
          Spacer(), // Another Spacer
          SvgPicture.asset('assets/icons/Splash_Bottom.svg'),
          // Spacer(flex: 2), // Adjust flex to create proportionate space
        ],
      ),
    ),



    );
  }
}


