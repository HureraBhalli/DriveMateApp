import 'package:drive_mate/Components/My%20Buttons.dart';
import 'package:drive_mate/Splash%20Screens/after_splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:vector_graphics/src/vector_graphics.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';




class SignUp extends StatelessWidget {

  static const String id = 'Sign Up';

  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          children: [
            Spacer(flex: 2),
            Image.asset('assets/icons/Drive_SignUp.png'),
            const SizedBox(
              height: 30,
            ),
            const Align(
              alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28.0),
                  child: Text('Sign Up', style: TextStyle(fontSize: 18, fontFamily: 'Poppins Semibold'),),
                )),

            SizedBox(
              height: 22,
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 8.0),
              child: Container(
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffFAFAFA),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14.0),
                      borderSide: BorderSide(color: Color(0xff000200).withOpacity(0.5), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder( // This is the border style when the TextField is focused
                      borderRadius: BorderRadius.circular(14.0),
                      borderSide: BorderSide(color: Color(0xff999A99), width: 1.6), // This will be a thicker border than `enabledBorder` and not translucent
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 12),
                      child: Image.asset('assets/signup/Upload.png', width: 24, height: 24,),
                    ),
                    labelText: 'Upload vehicle photos',
                    labelStyle: TextStyle(
                        fontFamily: 'Poppins Regular',
                        fontSize: 14,
                        color: Color(0xff000200).withOpacity(0.7)),
                  ),
                ),
              ),
            ),










            Spacer(flex: 7),
             MyButton(title: 'Sign Up', onpress: (){}),



            Spacer(flex: 10),


          ],

        ),
      ),


    );


  }
}

