import 'package:drive_mate/Components/My%20Buttons.dart';
import 'package:drive_mate/Splash%20Screens/Welcome.dart';
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
          MyButton(title: 'New user? Sign up here', onpress: (){},),

          MyButton(title: 'Get Started', onpress: (){
              Navigator.pushNamed(context, Welcome.id);

          },),
          Spacer(),
      ]),

    );
  }
}
