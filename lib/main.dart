import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff6763EE),
        body: SafeArea(
              child: Column(
                children: [
// SizedBox(
//   height: 230,
// ),
                  Image.asset('assets/icons/SplashLogo.png'),

                   SvgPicture.asset('assets/icons/DriveText.svg'),
                  SvgPicture.asset('assets/icons/SplashLogo.svg'),
                  // SizedBox(
                  //   height: 100,
                  // ),

                   SvgPicture.asset('assets/icons/Splash_Bottom.svg'),
                ],
              ),

        ),
      ),
    );
  }
}
