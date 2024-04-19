
import 'dart:ui';

import 'package:drive_mate/Components/My%20Buttons.dart';
import 'package:drive_mate/Nav%20Bar/Garage.dart';
import 'package:drive_mate/Nav%20Bar/Home.dart';
import 'package:drive_mate/Nav%20Bar/Profile.dart';
import 'package:drive_mate/Nav%20Bar/Wallet.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class Buy extends StatefulWidget {
  static const String id = 'Buy';


  const Buy({super.key});

  @override
  State<Buy> createState() => _BuyState();
}

class _BuyState extends State<Buy> {





  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    switch (index)
    {
      case 0:
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            transitionDuration: Duration(milliseconds: 5),
            pageBuilder: (_, __, ___) => Home(),
            transitionsBuilder: (_, animation, __, child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            },
          ),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            transitionDuration: Duration(milliseconds: 5),
            pageBuilder: (_, __, ___) => Garage(),
            transitionsBuilder: (_, animation, __, child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            },
          ),
        );
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            transitionDuration: Duration(milliseconds: 5),
            pageBuilder: (_, __, ___) => Wallet(),
            transitionsBuilder: (_, animation, __, child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            },
          ),
        );
        break;
    // Add cases for other pages here...
      case 3:
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            transitionDuration: Duration(milliseconds: 5),
            pageBuilder: (_, __, ___) => Profile(),
            transitionsBuilder: (_, animation, __, child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            },
          ),
        );
        break;
    }

    _selectedIndex = index;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(



      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('Search for cars', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 16),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: ()
              {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => Buy(),
                  transitionDuration: Duration(milliseconds:120),
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


              child: Container(

                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/Filtersvg.svg'),
                  ],
                ),
              ),
            ),
          )
        ],
      ),




      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Container(
              height: 366,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                color: Color(0xff6763EE).withOpacity(0.1),
              ),






              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 18.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Center(child: Text('Buy', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Colors.white),)),
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xff6763EE).withOpacity(0.7), // Purple with 67% opacity
                            const Color(0xff6763EE).withOpacity(1), // Purple with 100% opacity
                          ],
                        ),
                      ),

                    ),

                    const SizedBox(
                      width: 5,
                    ),

                    Container(
                      width: 80,
                      height: 30,
                      child: Center(child: Text('Sell', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff6763EE)),)),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff6763EE)),
                        borderRadius: const BorderRadius.all(Radius.circular(8)),
                        // gradient: LinearGradient(
                        //   colors: [
                        //     const Color(0xff6763EE).withOpacity(0.7), // Purple with 67% opacity
                        //     const Color(0xff6763EE).withOpacity(1), // Purple with 100% opacity
                        //   ],
                        // ),
                      ),


                    ),

                  ],
                ),
              ),




            ),
          ),








          SizedBox(
            height: 120,
          ),


          GestureDetector(
            child: MyButton(
              title: 'Search Vehicles',
              onpress: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      Home(),
                  transitionDuration: Duration(milliseconds: 220),
                  reverseTransitionDuration: Duration(milliseconds: 220),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    // Your existing transition if you still want to apply it
                    var scaleTween = Tween<double>(begin: 0.0, end: 1.0)
                        .animate(CurvedAnimation(
                        parent: animation,
                        curve: Curves.linearToEaseOut));
                    return ScaleTransition(
                      scale: scaleTween,
                      child: child,
                    );
                  },
                ));
              },
            ),
          ),










        ],
      ),


































      bottomNavigationBar: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: Container(
              height: 106, // Adjusted height
              // color: Color(0xff6763EE).withOpacity(0.9),

              child: BottomNavigationBar(
                backgroundColor:
                Color(0xff6763EE).withOpacity(0.9), // Set to transparent
                // backgroundColor: Color(0xff6763EE).withAlpha(100),

                //backgroundColor: Colors.green,
                items: [
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/Home.svg',
                      color: _selectedIndex == 0
                          ? Color(0xffFFFFFF)
                          : Color(0xffFFFFFF).withOpacity(0.7),
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/Garage.svg',
                      color: _selectedIndex == 1
                          ? Color(0xffFFFFFF)
                          : Color(0xffFFFFFF).withOpacity(0.7),
                    ),
                    label: 'Garage',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/Wallet.svg',
                      color: _selectedIndex == 2
                          ? Color(0xffFFFFFF)
                          : Color(0xffFFFFFF).withOpacity(0.7),
                    ),
                    label: 'Wallet',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/Profile.svg',
                      color: _selectedIndex == 3
                          ? Color(0xffFFFFFF)
                          : Color(0xffFFFFFF).withOpacity(0.7),
                    ),
                    label: 'Profile',
                  ),
                ],
                selectedLabelStyle: TextStyle(
                    fontFamily: 'Poppins Semibold',
                    fontSize: 12,
                    color: Color(0xffFFFFFF)),
                unselectedLabelStyle: TextStyle(
                    fontFamily: 'Poppins Regular',
                    fontSize: 12,
                    color: Color(0xffFFFFFF)),
                unselectedItemColor: Color(0xffFFFFFF).withOpacity(0.7),
                unselectedIconTheme:
                IconThemeData(color: Color(0xffFFFFFF).withOpacity(0.2)),
                selectedItemColor: Color(0xffFFFFFF),
                type: BottomNavigationBarType.fixed,
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
              ),
            ),
          ),
          Positioned(
            bottom: 13, // Adjust this value to position the dot properly
            left: MediaQuery.of(context).size.width / 8 +
                _selectedIndex * (MediaQuery.of(context).size.width / 4) -
                4, // Adjust this value to position the dot properly
            child: Container(
              width: 6,
              height: 6,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors
                    .white, // Change this to the color you want for the dot
              ),
            ),
          ),
        ],
      ),









    );
  }
}
