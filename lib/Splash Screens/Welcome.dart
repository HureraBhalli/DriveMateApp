import 'package:drive_mate/Components/My%20Buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';





class Welcome extends StatefulWidget {

  static const String id = 'Splash';


  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                  children: [

                    SvgPicture.asset('assets/icons/BackButton.svg'),
                    Spacer(flex: 1),
                    Text('Welcome to Drive Mate', style: TextStyle(fontSize: 16, fontFamily: 'Poppins Medium' ),),
                    Spacer(flex: 1),
                  ]
              ),
            ),
          ),

          Text('Find Vehicle Services', style: TextStyle(fontSize: 18, fontFamily: 'Poppins Semibold', ),),



          Padding(
             padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 10),
             child: Container(
               height: 60,
               width: double.infinity,

                child: Text('Stay updated with news', style: TextStyle(fontSize: 14, fontFamily: 'Poppins Semibold', color: Color(0xff6763ee) ),),


               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(12.0),
                 border: Border.all(
                   color: Colors.black.withOpacity(0.30),
                   width: 1.3,
                 )
               ),
             ),
           ),



          MyButton(
              title: 'Get Started', onpress: (){}
          )

        ],
      ),

    );
  }
}
