import 'dart:ui';
import 'package:drive_mate/Nav%20Bar/Garage.dart';
import 'package:drive_mate/Nav%20Bar/Home.dart';
import 'package:drive_mate/Nav%20Bar/Profile.dart';
import 'package:drive_mate/Short%20Flow/Earning.dart';
import 'package:drive_mate/Short%20Flow/Rewards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
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
    double screenhieght = MediaQuery.of(context).size.height;
    final height = MediaQuery.of(context).size.height;


    return Scaffold(



      backgroundColor: Colors.white,


      appBar: AppBar(
        backgroundColor: Colors.white,

        centerTitle: true,
        title: const Text('Cash Back', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 16),),
      ),









      body: SingleChildScrollView(
        child: Column(
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

                  //Conaitner Earned


                  Expanded(
                    child: Container(
                      height: 80,


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
                                  Text('Earned', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12),),
                                  Text('\$2340.00', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 18, color: Color(0xff6763EE)),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),




                  const SizedBox(
                    width: 10,
                  ),



                  //Conaitner Redeemed

                  Expanded(
                    child: Container(
                      height: 80,


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
                                  Text('Redeemed', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12),),
                                  Text('\$1234.00', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 18, color: Color(0xff6763EE)),),
                                ],
                              ),
                            ),
                          ],
                        ),
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
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => Reward(),
                          transitionDuration: Duration(milliseconds: 120),
                          reverseTransitionDuration: Duration(milliseconds: 120),
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


                      child: Container(
                        height: 211,


                        decoration: BoxDecoration(
                          border: Border.all( color: Color(0xff6763EE).withOpacity(1)),
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          color: Color(0xff6763EE).withOpacity(0.15),
                        ),


                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0, top: 18.0, right: 18.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Text('Rewards', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 14),),
                                  const Spacer(
                                    flex: 70,
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

                                  //Conaitner Reward



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



                              //Linear Progress Bar


                              const LinearProgressIndicator(
                                value: 0.42,
                                backgroundColor:  Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(6)),
                                minHeight: 6,
                                valueColor: AlwaysStoppedAnimation(Color(0xff6763EE)),
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
                    ),
                  ),




                  const SizedBox(
                    width: 10,
                  ),



                  //Conaitner Earning



                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => Earning(),
                          transitionDuration: Duration(milliseconds: 120),
                          reverseTransitionDuration: Duration(milliseconds: 120),
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
                      child: Container(

                        height: 211,

                        decoration: BoxDecoration(
                          border: Border.all( color: Color(0xff6763EE).withOpacity(1)),
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          color: Color(0xff6763EE).withOpacity(0.15),
                        ),

                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0, top: 18.0, right: 18.0,),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('Earnings', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 14),),
                                  const Spacer(
                                    flex: 70,
                                  ),
                                  SvgPicture.asset('assets/icons/NextBack.svg'),


                                ],
                              ),



                              const SizedBox(
                                height: 20,
                              ),

                              const Row(
                                children: [
                                  Text('42%', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14),),

                                  Text(' Referrals', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 14),),

                                ],
                              ),


                              const SizedBox(
                                height: 6,
                              ),

                              //Linear Progress Bar

                              const LinearProgressIndicator(
                                value: 0.42,
                                backgroundColor:  Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(6)),
                                minHeight: 6,
                                valueColor: AlwaysStoppedAnimation(Color(0xff6763EE)),
                              ),


                              const SizedBox(
                                height: 20,
                              ),

                              const Row(
                                children: [
                                  Text('23%', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14),),

                                  Text(' Cash Back', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 14),),

                                ],
                              ),


                              const SizedBox(
                                height: 6,
                              ),

                              //Linear Progress Bar

                              const LinearProgressIndicator(
                                value: 0.23,
                                backgroundColor:  Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(6)),
                                minHeight: 6,
                                valueColor: AlwaysStoppedAnimation(Color(0xff6763EE)),
                              ),



                              const SizedBox(
                                height: 20,
                              ),

                              const Row(
                                children: [
                                  Text('12%', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14),),

                                  Text(' Rewards', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 14),),

                                ],
                              ),


                              const SizedBox(
                                height: 6,
                              ),

                              //Linear Progress Bar

                              const LinearProgressIndicator(
                                value: 0.12,
                                backgroundColor:  Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(6)),
                                minHeight: 6,
                                valueColor: AlwaysStoppedAnimation(Color(0xff6763EE)),
                              ),









                            ],
                          ),
                        ),

                      ),
                    ),
                  )
                ],
              ),
            ),







            //Bottom Box

            //Reward


            Column(
              children: [
                  const SizedBox(
                    height: 20,
                  ),
                Container(
                  height: 245,


                  decoration: BoxDecoration(
                    // border: Border.all( color: Color(0xff6763EE).withOpacity(1)),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)
                    ),

                    color: const Color(0xff6763EE).withOpacity(0.3),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.only(left: 22.0, right: 22.0, top: 20.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text('Redeem at', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 18, color: Color(0xff6763EE),),),
                          ],
                        ),

                        const SizedBox(
                          height: 12,
                        ),



                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 95,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(18)),
                                ),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   SvgPicture.asset('assets/icons/Fuel.svg'),
                                   const SizedBox(
                                     height: 3,
                                   ),
                                   const Text('Rewards', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 12, color: Color(0xff6763EE),),),
                                 ],
                               ),
                              ),
                            ),

                            const SizedBox(
                              width: 12,
                            ),

                            Expanded(
                              child: Container(
                                height: 95,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(18)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset('assets/icons/Insurance.svg'),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    const Text('Insurance', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 12, color: Color(0xff6763EE),),),
                                  ],
                                ),
                              ),
                            ),


                            const SizedBox(
                              width: 12,
                            ),


                            Expanded(
                              child: Container(
                                height: 95,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(18)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset('assets/icons/Cashback.svg'),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    const Text('Cashback\nMerchants', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 12, color: Color(0xff6763EE),),),
                                  ],
                                ),
                              ),
                            ),




                          ],
                        ),

                        const SizedBox(
                          height: 30,
                        ),

                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/Star.svg'),
                            const SizedBox(
                              width: 6,
                            ),
                            const Text('You can claim your rewards & also check the\nmerchant details.', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff000000),),),
                          ],
                        )



                      ],
                    ),
                  ),



                )
              ],
            )




          ],
        ),
      ),





































      // bottomNavigationBar: Stack(
      //   alignment: Alignment.bottomCenter,
      //   children: [
      //     ClipRRect(
      //       borderRadius: const BorderRadius.only(
      //         topLeft: Radius.circular(30),
      //         topRight: Radius.circular(30),
      //       ),
      //       child: Container(
      //         height: 106, // Adjusted height
      //         // color: Color(0xff6763EE).withOpacity(0.9),
      //
      //         child: BottomNavigationBar(
      //           backgroundColor:
      //           Color(0xff6763EE).withOpacity(0.9), // Set to transparent
      //           // backgroundColor: Color(0xff6763EE).withAlpha(100),
      //
      //           //backgroundColor: Colors.green,
      //           items: [
      //             BottomNavigationBarItem(
      //               icon: SvgPicture.asset(
      //                 'assets/icons/Home.svg',
      //                 color: _selectedIndex == 0
      //                     ? Color(0xffFFFFFF)
      //                     : Color(0xffFFFFFF).withOpacity(0.7),
      //               ),
      //               label: 'Home',
      //             ),
      //             BottomNavigationBarItem(
      //               icon: SvgPicture.asset(
      //                 'assets/icons/Garage.svg',
      //                 color: _selectedIndex == 1
      //                     ? Color(0xffFFFFFF)
      //                     : Color(0xffFFFFFF).withOpacity(0.7),
      //               ),
      //               label: 'Garage',
      //             ),
      //             BottomNavigationBarItem(
      //               icon: SvgPicture.asset(
      //                 'assets/icons/Wallet.svg',
      //                 color: _selectedIndex == 2
      //                     ? Color(0xffFFFFFF)
      //                     : Color(0xffFFFFFF).withOpacity(0.7),
      //               ),
      //               label: 'Wallet',
      //             ),
      //             BottomNavigationBarItem(
      //               icon: SvgPicture.asset(
      //                 'assets/icons/Profile.svg',
      //                 color: _selectedIndex == 3
      //                     ? Color(0xffFFFFFF)
      //                     : Color(0xffFFFFFF).withOpacity(0.7),
      //               ),
      //               label: 'Profile',
      //             ),
      //           ],
      //           selectedLabelStyle: TextStyle(
      //               fontFamily: 'Poppins Semibold',
      //               fontSize: 12,
      //               color: Color(0xffFFFFFF)),
      //           unselectedLabelStyle: TextStyle(
      //               fontFamily: 'Poppins Regular',
      //               fontSize: 12,
      //               color: Color(0xffFFFFFF)),
      //           unselectedItemColor: Color(0xffFFFFFF).withOpacity(0.7),
      //           unselectedIconTheme:
      //           IconThemeData(color: Color(0xffFFFFFF).withOpacity(0.2)),
      //           selectedItemColor: Color(0xffFFFFFF),
      //           type: BottomNavigationBarType.fixed,
      //           currentIndex: _selectedIndex,
      //           onTap: _onItemTapped,
      //         ),
      //       ),
      //     ),
      //     Positioned(
      //       bottom: 13, // Adjust this value to position the dot properly
      //       left: MediaQuery.of(context).size.width / 8 +
      //           _selectedIndex * (MediaQuery.of(context).size.width / 4) -
      //           4, // Adjust this value to position the dot properly
      //       child: Container(
      //         width: 6,
      //         height: 6,
      //         decoration: const BoxDecoration(
      //           shape: BoxShape.circle,
      //           color: Colors
      //               .white, // Change this to the color you want for the dot
      //         ),
      //       ),
      //     ),
      //   ],
      // ),














      bottomNavigationBar: Stack(
        children: [
          // Background
          Container(
            width: double.infinity,
            height: 106, // Adjusted height
            decoration: BoxDecoration(
              color: Color(0xff6763EE).withOpacity(0.3),
            ),
          ),

          // Rounded corner decoration
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: Container(
              height: 106, // Adjusted height
              decoration: const BoxDecoration(
                // color: Color(0xff6763EE).withOpacity(0.45), // Color behind rounded corners
              ),
              child: BottomNavigationBar(
                backgroundColor: const Color(0xff6763EE).withOpacity(0.9),
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
                selectedLabelStyle: const TextStyle(fontFamily: 'Poppins Semibold', fontSize: 12, color: Color(0xffFFFFFF),),
                unselectedLabelStyle: const TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xffFFFFFF),),
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


          // Dot
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
                color: Colors.white, // Change this to the color you want for the dot
              ),
            ),
          ),


        ],
      ),

















    );
  }
}
