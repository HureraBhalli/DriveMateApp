import 'package:drive_mate/Components/My%20Buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Text('Sign Up', style: TextStyle(fontSize: 18, fontFamily: 'Poppins Semibold'),),
                )),




            Spacer(flex: 7),
            MyButton(title: 'Sign Up', onpress: (){}),
            Spacer(flex: 10),


          ],

        ),
      ),


    );


  }
}

