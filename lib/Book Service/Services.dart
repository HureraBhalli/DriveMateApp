

// import 'dart:ffi';
import 'dart:ui';
import 'package:drive_mate/Book%20Service/Services.dart';
import 'package:drive_mate/Buy%20Vehicle/Buy.dart';
import 'package:drive_mate/Components/My%20Buttons.dart';
import 'package:drive_mate/Nav%20Bar/Garage.dart';
import 'package:drive_mate/Nav%20Bar/Home.dart';
import 'package:drive_mate/Nav%20Bar/Profile.dart';
import 'package:drive_mate/Nav%20Bar/Wallet.dart';
import 'package:drive_mate/Short%20Flow/ReferFriend.dart';
import 'package:drive_mate/Sign%20Up/Add%20Vehicle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:drive_mate/Nav%20Bar/Garage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Services extends StatefulWidget {
  static const String id = 'Services';


  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {



  int _selectedIndex = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Services',
          style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 16),),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SvgPicture.asset('assets/icons/Menu.svg'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: SvgPicture.asset('assets/icons/Search1.svg'),
          ),
        ],
      ),


      body: Column(
        children: [

          const SizedBox(
            height: 20,
          ),

          SizedBox(
            height: 70,
            child: Padding(
              padding: const EdgeInsets.only(left: 22.0),
              child: ListView.builder(
                shrinkWrap: true,
                 itemCount: 5,
                scrollDirection: Axis.horizontal,

                itemBuilder: (_, index) {
                  List<String> serviceNames = [
                    'All',
                    'Oil Changes',
                    'Tire',
                    'Break Services',
                    'Electrician',

                  ];

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },


                    child: Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Column(
                        children: [
                          Container(
                            height: 33,
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(8)),
                              border: _selectedIndex == index ? null : Border
                                  .all(color: Colors.black, width: 1),
                              color: _selectedIndex == index
                                  ? Color(0xff6763EE).withOpacity(0.95)
                                  : null, // Purple with 67% opacity
                            ),

                            child: Center(
                              child: Text(
                                serviceNames[index], // Get text based on index
                                style: TextStyle(fontFamily: 'Poppins Medium',
                                    fontSize: 14,
                                    color: _selectedIndex == index ? Colors
                                        .white : Colors.black),

                              ),
                              //    child: Text('Services', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 16),),
                            ),
                          ),

                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),


          Container(
            height: 500,
            decoration: BoxDecoration(
              color: Color(0xff000000).withOpacity(0.1),
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child: Column(
              children: [


                Padding(
                  padding: const EdgeInsets.only( top: 20.0, left: 22.0, right: 22.0),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 80,

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xff6763EE)
                                    .withOpacity(0.7),
                                // Purple with 67% opacity
                                const Color(0xff6763EE)
                                    .withOpacity(1),
                                // Purple with 100% opacity
                              ],
                            )
                        ),

                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('All Filters', style: TextStyle(
                                fontFamily: 'Poppins Regular',
                                fontSize: 12,
                                color: Colors.white),),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),


                      Spacer(flex: 3),
                      //Sort by

                      Container(
                        height: 30,
                        width: 80,

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xff6763EE)
                                    .withOpacity(0.7),
                                // Purple with 67% opacity
                                const Color(0xff6763EE)
                                    .withOpacity(1),
                                // Purple with 100% opacity
                              ],
                            )
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text('Sort by', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Colors.white),),
                            const SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset('assets/icons/Dropdown.svg'),
                          ],
                        ),
                      ),


                    ],
                  ),
                ),


                const SizedBox(
                  height: 20,
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 22.0),
                  child: Row(
                    children: [
                      Text('Showing 20 results out of 170 services', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 12, color: Colors.black),),
                    ],
                  ),
                ),






                const SizedBox(
                  height: 20,
                ),





                //Shopping Cards


                Row(
                  children: [

                    SizedBox(
                      height: 270,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 22.0),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 2,
                          scrollDirection: Axis.horizontal,

                          itemBuilder: (_, index) {
                            List<String> serviceNames = [
                              'All',
                              'Oil Changes',
                            ];

                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedIndex = index;
                                });
                              },


                              child: Padding(
                                padding: const EdgeInsets.only(right: 12.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 210,
                                      width: 167,
                                      padding: EdgeInsets.symmetric(horizontal: 12),
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(8)),
                                        border: _selectedIndex == index ? null : Border.all(color: Colors.black, width: 1),
                                        color: _selectedIndex == index ? Color(0xff6763EE).withOpacity(0.95) : null, // Purple with 67% opacity
                                      ),

                                      child: Center(
                                        child: Text(
                                          serviceNames[index], // Get text based on index
                                          style: TextStyle(fontFamily: 'Poppins Medium',
                                              fontSize: 14,
                                              color: _selectedIndex == index ? Colors
                                                  .white : Colors.black),

                                        ),
                                        //    child: Text('Services', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 16),),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),


                  ],
                )








              ],
            ),
          ),



        ],
      ),







    );
  }
  }



