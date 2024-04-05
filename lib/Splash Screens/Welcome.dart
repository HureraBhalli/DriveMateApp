import 'package:drive_mate/Components/My%20Buttons.dart';
import 'package:drive_mate/Splash%20Screens/after_splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';





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
          const SizedBox(
            height: 10,
          ),
          SafeArea(
            child: Row(
                children: [
                  ElevatedButton(


                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.transparent), // Transparent background
                      shadowColor: MaterialStateProperty.all(Colors.transparent),

                      minimumSize: MaterialStateProperty.all(Size(0, 36)),

                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 12)),

                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) return Colors.transparent; // No pressed overlay color
                          return null; // Defer to the widget's default.
                        },
                      ),
                      elevation: MaterialStateProperty.all(0), // No elevation
                    ),
                    onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AfterSplash()),

                      );
                    },

                    child: SvgPicture.asset('assets/icons/BackButton.svg'),
                  ),

                   const Spacer(flex: 1),
                  const Text('Welcome to Drive Mate', style: TextStyle(fontSize: 16, fontFamily: 'Poppins Medium' ),),
                  const Spacer(flex: 2),
                ]
            ),
          ),

          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.0,),
              child: Text(
                'Find Vehicle Services',
                style: TextStyle(fontSize: 18, fontFamily: 'Poppins Semibold'),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          // Spacer(flex: 4),


// border check box
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 5),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: Colors.black.withOpacity(0.18),
                  width: 1.3,
                ),
              ),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/Tick_purple.svg',),
                        const SizedBox(
                          width: 30,
                        ),
                        Text('Stay updated with news', style: TextStyle(fontSize: 14, fontFamily: 'Poppins Semibold', color: Color(0xff6763EE)),),
                      ],
                    ),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 5),
            child: Container(
              height: 60,

              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff6763EE).withOpacity(0.15),
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: Colors.black.withOpacity(0),
                ),
              ),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/Tick_purple.svg', color: Colors.black,),
                       const SizedBox(
                          width: 30,
                        ),

                        Text('Get daily news updates', style: TextStyle(fontSize: 14, fontFamily: 'Poppins Regular', color: Color(0xff000000)),),
                        // Spacer(flex: 5),
                      ],
                    ),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 5),
            child: Container(
              height: 60,

              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff6763EE).withOpacity(0.15),
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: Colors.black.withOpacity(0),
                ),
              ),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/Tick_purple.svg', color: Colors.black,),
                        const SizedBox(
                          width: 30,
                        ),
                        Text('Receive weekly digests', style: TextStyle(fontSize: 14, fontFamily: 'Poppins Regular', color: Color(0xff000000)),),

                      ],
                    ),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 5),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: Colors.black.withOpacity(0.18),
                  width: 1.3,
                ),
              ),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/Tick_purple.svg',),
                        const SizedBox(
                          width: 30,
                        ),
                        Text('Read sports commentary', style: TextStyle(fontSize: 14, fontFamily: 'Poppins Semibold', color: Color(0xff6763EE)),),
                      ],
                    ),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 5),
            child: Container(
              height: 60,

              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff6763EE).withOpacity(0.15),
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: Colors.black.withOpacity(0),
                ),
              ),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/Tick_purple.svg', color: Colors.black,),
                        const SizedBox(
                          width: 30,
                        ),
                        Text('Explore business predictions', style: TextStyle(fontSize: 14, fontFamily: 'Poppins Regular', color: Color(0xff000000)),),
                      ],
                    ),
                  )),
            ),
          ),

          Spacer(flex: 3),

          MyButton(
              title: 'Get Started', onpress: (

              ){}
          ),
          Spacer(flex: 1),
        ],
      ),

    );
  }
}
