import 'package:drive_mate/Nav%20Bar/Garage.dart';
import 'package:drive_mate/Nav%20Bar/Home.dart';
import 'package:drive_mate/Splash%20Screens/splash.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'Splash Screens/Welcome.dart';
import 'Splash Screens/after_splash.dart';
import 'Sign Up/SignUp.dart';



void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 3), () {
  //     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => AfterSplash()));
  //   });
  // }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: const Splash(),

      routes: {
         Splash.id: (context) => const Splash(),
        AfterSplash.id: (context) => const AfterSplash(),
        Welcome.id: (context) => const Welcome(),
        SignUp.id: (context) => const SignUp(),
        Home.id: (context) => const Home(),
        Garage.id: (context) => const Garage(),


      },
      onGenerateRoute: (settings) {
        // Here you can add condition for each route you want to handle dynamically
        return null;
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const Splash()); // Fallback to the Splash screen as an example
      },


    );
  }
}


