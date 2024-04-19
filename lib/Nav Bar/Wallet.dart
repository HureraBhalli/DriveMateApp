

import 'dart:ui';

import 'package:drive_mate/Nav%20Bar/Garage.dart';
import 'package:drive_mate/Nav%20Bar/Home.dart';
import 'package:drive_mate/Nav%20Bar/Profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';






class Wallet extends StatefulWidget {
  static const String id = 'Wallet';

  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {


  int _selectedIndex = 2;

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

    double screenWidth = MediaQuery.of(context).size.width;


    return Scaffold(



      backgroundColor: Colors.white,


      appBar: AppBar(
        backgroundColor: Colors.white,

        centerTitle: true,
        title: const Text('Cash Back', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 16),),
      ),


      body: Column(
        children: [


          const SizedBox(
            height: 30,
          ),



          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Container(

                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all( color: Color(0xff6763EE).withOpacity(1)),
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Color(0xff6763EE).withOpacity(0.15), // Purple with 67% opacity
                ),

                child: const Padding(
                  padding: EdgeInsets.only(top: 18.0, left: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Balance', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12),),
                      Text('\$234.00', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 30, color: Color(0xff6763EE)),),
                    ],
                  ),
                ),
            ),
          ),




          const SizedBox(
            height: 18,
          ),



          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: screenWidth * 0.437,

                  decoration: BoxDecoration(
                    border: Border.all( color: Color(0xff6763EE).withOpacity(1)),
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: Color(0xff6763EE).withOpacity(0.15),
                  ),


                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Row(

                      children: [
                        SvgPicture.asset('assets/icons/Earn.svg'),

                        const Padding(
                          padding: EdgeInsets.only(top: 18.0, left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Balance', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12),),
                              Text('\$2340.00', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 18, color: Color(0xff6763EE)),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),




                const SizedBox(
                  width: 10,
                ),



                Container(
                  height: 80,
                  width: screenWidth * 0.437,

                  decoration: BoxDecoration(
                    border: Border.all( color: Color(0xff6763EE).withOpacity(1)),
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: Color(0xff6763EE).withOpacity(0.15),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Row(

                      children: [
                        SvgPicture.asset('assets/icons/Redeem.svg'),

                        const Padding(
                          padding: EdgeInsets.only(top: 18.0, left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Balance', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12),),
                              Text('\$12,234.00', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 18, color: Color(0xff6763EE)),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                )
              ],
            ),
          ),






          const SizedBox(
            height: 18,
          ),




          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Row(
              children: [
                Container(
                  height: 211,
                  width: screenWidth * 0.437,

                  decoration: BoxDecoration(
                    border: Border.all( color: Color(0xff6763EE).withOpacity(1)),
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: Color(0xff6763EE).withOpacity(0.15),
                  ),


                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0, top: 18.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Rewards', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 14),),
                            const Spacer(
                              flex: 3,
                            ),
                            SvgPicture.asset('assets/icons/NextBack.svg'),
                            const Spacer(
                              flex: 1,
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 20,
                        ),


                        Row(
                          children: [

                            Container(
                              height: 40,
                              width: 40,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0.1,
                                    blurRadius: 0.1,
                                    offset: Offset(0, 1), // changes position of shadow
                                  ),
                                ],
                                //boxShadow: BoxDecoration(4),
                              ),
                              child: SvgPicture.asset('assets/icons/CarWash.svg',   fit: BoxFit.none,),
                            ),

                            const SizedBox(
                              width: 12,
                            ),
                            Text('Free Car\nWash ', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 12),),

                          ],
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        const Row(
                          children: [
                            Text('42% reached', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 16),),
                          ],
                        ),


                        const SizedBox(
                          height: 12,
                        ),



                        Container(
                          width: 80,
                          child: const Row(
                            children: [
                              LinearProgressIndicator(
                                value: 0.8, // Example value indicating the progress (0.0 to 1.0)
                                backgroundColor: Colors.grey, // Background color of the progress bar
                                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue), // Color of the progress bar
                              ),
                            ],
                          ),
                        ),



                        const SizedBox(
                          height: 12,
                        ),


                        const Row(
                          children: [
                            Text('\$20 out of \$250', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 12),),
                          ],
                        ),



                      ],

                    ),
                  ),

                ),




                const SizedBox(
                  width: 10,
                ),



                Container(
                  height: 211,
                  width: screenWidth * 0.437,

                  decoration: BoxDecoration(
                    border: Border.all( color: Color(0xff6763EE).withOpacity(1)),
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: Color(0xff6763EE).withOpacity(0.15),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Row(

                      children: [
                        SvgPicture.asset('assets/icons/Redeem.svg'),

                        const Padding(
                          padding: EdgeInsets.only(top: 18.0, left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Balance', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12),),
                              Text('\$12,234.00', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 18, color: Color(0xff6763EE)),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                )
              ],
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
