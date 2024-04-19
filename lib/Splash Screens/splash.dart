import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/app.dart';
import 'package:drive_mate/Splash%20Screens/after_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';


class Splash extends StatefulWidget {

  static const String id = 'Splash';


  const Splash({super.key});
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {


  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      if (mounted) { // Make sure that the context is still available
        Navigator.of(context).pushReplacementNamed(AfterSplash.id);
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xff6763EE),
    body: Center( // This will center the Column content vertically and horizontally
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // This will center the Column content vertically
        children: [
          Spacer(flex: 2),



          // Use Spacer to create flexible spaces between widgets
          Image.asset(
            'assets/icons/SplashLogo.png',
          ),

          SvgPicture.asset('assets/icons/DriveText.svg'),
          Spacer(), // they Spacer

          Align(
            alignment: Alignment.bottomCenter,
              child: SvgPicture.asset('assets/icons/Splash_Bottom.svg', fit: BoxFit.fitWidth,),
          ),
        ],



      ),
    ),

    );
  }
}





