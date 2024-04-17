import 'package:drive_mate/Components/My%20Buttons.dart';
import 'package:drive_mate/Sign%20Up/SignUp.dart';
import 'package:drive_mate/Splash%20Screens/Welcome.dart';
import 'package:drive_mate/Nav%20Bar/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:async';


class AfterSplash extends StatefulWidget {

  static const String id = 'After Splash';


  const AfterSplash({super.key});

  @override
  State<AfterSplash> createState() => _AfterSplashState();
}

class _AfterSplashState extends State<AfterSplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(flex: 2,),


          Image.asset( 'assets/icons/Splash_Two.jpg' ),

          SizedBox(
            height: 18,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Text(
              'You can now handle vehicle services with DriveMate.\n Lets start and enjoy your journey with us.',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 14, color: Colors.black ), ),
          ),


          Spacer(flex: 4,),


          GestureDetector(
            child: MyButton(
              title: 'New user? Sign up here', onpress: () {
              Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) => SignUp(),
                transitionDuration: Duration(milliseconds:220),
                reverseTransitionDuration: Duration(milliseconds: 220),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  // Your existing transition if you still want to apply it
                  var scaleTween = Tween<double>(begin: 0.0, end: 1.0)
                      .animate(CurvedAnimation(parent: animation, curve: Curves.linearToEaseOut));
                  return ScaleTransition(
                    scale: scaleTween,
                    child: child,
                  );
                },
              ));
            },
            ),
          ),




          GestureDetector(
            // ... other properties
            child: Hero(
              tag: 'uniqueHeroTag',  // Make sure this tag is unique across your app
              child: MyButton(
                title: 'Get Started',
                onpress: () {
                  Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) => Welcome(),
                    transitionDuration: Duration(milliseconds:220),
                    reverseTransitionDuration: Duration(milliseconds: 220),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      // Your existing transition if you still want to apply it
                      var scaleTween = Tween<double>(begin: 0.0, end: 1.0)
                          .animate(CurvedAnimation(parent: animation, curve: Curves.linearToEaseOut));
                      return ScaleTransition(
                        scale: scaleTween,
                        child: child,
                      );
                    },
                  ));
                },
              ),
            ),
          ),








          Spacer(flex: 1,),
      ]),

    );
  }
}

class PageTransition {

}
