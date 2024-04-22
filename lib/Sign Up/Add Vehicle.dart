import 'package:drive_mate/Components/My%20Buttons.dart';
import 'package:drive_mate/Nav%20Bar/Home.dart';
import 'package:drive_mate/Splash%20Screens/after_splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:vector_graphics/src/vector_graphics.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';




class AddVehicle extends StatelessWidget {

  static const String id = 'Add Vehicle';

  const AddVehicle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 28.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('New Vehicle Registration!', style: TextStyle(fontSize: 18, fontFamily: 'Poppins Semibold'),),
                          Text('New Vehicle Registration!', style: TextStyle(fontSize: 10, fontFamily: 'Poppins Regular'),),


                        ],
                      ),
                    )),



                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: Column(
                    children: [

                      SizedBox(
                        height: 30,
                      ),

                      Container(
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




                    //  FileUploadTextField(),


                      const SizedBox(
                        height: 14,
                      ),

                      Container(
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
                              child: Image.asset('assets/signup/License.png', width: 24, height: 24,),
                            ),
                            labelText: 'Driving License Number',
                            labelStyle: TextStyle(
                                fontFamily: 'Poppins Regular',
                                fontSize: 14,
                                color: Color(0xff000200).withOpacity(0.7)),
                          ),
                        ),
                      ),


                      const SizedBox(
                        height: 14,
                      ),

                      Container(
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
                              child: Image.asset('assets/signup/Vehicle.png', width: 24, height: 24,),
                            ),
                            labelText: 'Vehicle Type ie, ES300H',
                            labelStyle: TextStyle(
                                fontFamily: 'Poppins Regular',
                                fontSize: 14,
                                color: Color(0xff000200).withOpacity(0.7)),
                          ),
                        ),
                      ),


                      const SizedBox(
                        height: 14,
                      ),

                      Container(
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
                              child: Image.asset('assets/signup/Brand.png', width: 24, height: 24,),
                            ),
                            labelText: 'Make i.e, Lexus, BMW',
                            labelStyle: TextStyle(
                                fontFamily: 'Poppins Regular',
                                fontSize: 14,
                                color: Color(0xff000200).withOpacity(0.7)),
                          ),
                        ),
                      ),


                      const SizedBox(
                        height: 14,
                      ),


                      Container(
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
                              child: Image.asset('assets/signup/Model.png', width: 24, height: 24,),
                            ),
                            labelText: 'Year Model',
                            labelStyle: TextStyle(
                                fontFamily: 'Poppins Regular',
                                fontSize: 14,
                                color: Color(0xff000200).withOpacity(0.7)),
                          ),
                        ),
                      ),


                      const SizedBox(
                        height: 14,
                      ),



                      Container(
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
                              child: Image.asset('assets/signup/Category.png', width: 24, height: 24,),
                            ),
                            labelText: 'Preferred Category',
                            labelStyle: TextStyle(
                                fontFamily: 'Poppins Regular',
                                fontSize: 14,
                                color: Color(0xff000200).withOpacity(0.7)),
                          ),
                        ),
                      ),



                    ],
                  ),
                ),




                const Spacer(flex: 3),


                GestureDetector(
                  child: MyButton(
                    title: 'Register', onpress: () {
                    Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => Home(),
                      transitionDuration: Duration(milliseconds: 120),
                      reverseTransitionDuration: Duration(milliseconds: 120),
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



                const Spacer(flex: 1),


              ],

            ),
          ),
        ),
      ),



    );


  }
}

