import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff6763EE),
    body: SafeArea(
    child: Column(

    children: [

// SizedBox(
// height: 230,
// ),
    Image.asset('assets/icons/SplashLogo.png'),
    SvgPicture.asset('assets/icons/DriveText.svg'),
    // SizedBox(
    //   height: 100,
    // ),


    SvgPicture.asset('assets/icons/Splash_Bottom.svg'),
    ],
    ),
    ),
    );
}
