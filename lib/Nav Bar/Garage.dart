import 'package:drive_mate/Buy%20Vehicle/Buy.dart';
import 'package:drive_mate/Nav%20Bar/Profile.dart';
import 'package:drive_mate/Nav%20Bar/Wallet.dart';
import 'package:drive_mate/Sign%20Up/Add%20Vehicle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:drive_mate/Nav%20Bar/Home.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';


class Garage extends StatefulWidget {
  static const String id = 'Garage';



  const Garage({super.key});

  @override
  State<Garage> createState() => _GarageState();
}

class _GarageState extends State<Garage> {


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
        title: const Text('Garage', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 16),),
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
                height: 30,
                width: 80,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xff6763EE)
                          .withOpacity(0.7), // Purple with 67% opacity
                      const Color(0xff6763EE)
                          .withOpacity(1), // Purple with 100% opacity
                    ],
                  )
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Buy', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Colors.white),),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset('assets/icons/Dropdown.svg'),
                  ],
                ),
              ),
            ),
          )
        ],
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
                height: 377,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xff6763EE).withOpacity(0.7), // Purple with 67% opacity
                      const Color(0xff6763EE).withOpacity(1), // Purple with 100% opacity
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 18.0),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 98,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffFFFFFF).withOpacity(0.5),
                            ),
                            color: Color(0xff1D1D1D).withOpacity(0.15),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Row(
                            children: [
                              const Spacer(flex: 2),
                              Image.asset('assets/pictures/blackcar.png'),
                              Spacer(flex: 2),
                              const Text(
                                'Ford Mustang\n2023 A34567',
                                style: TextStyle(
                                  fontFamily: 'Poppins Semibold',
                                  fontSize: 14,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                              const Spacer(flex: 5),
                              GestureDetector(
                                child: SvgPicture.asset('assets/icons/memory_plus.svg'),
                                onTap: ()
                                {
                                  Navigator.of(context).push(PageRouteBuilder(
                                    pageBuilder: (context, animation, secondaryAnimation) => AddVehicle(),
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
                              ),
                              const Spacer(flex: 2),
                            ],
                          ),
                        ),
                      ),
                    ),
        
        
                    const Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
        
                            Text('Your insurance expires on', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xffFFFFFF),),),
        
                          ],
                        ),
                      ),
                    ),
        
                    const SizedBox(
                      height: 20,
                    ),
        
        
        
                    //Missing
        
        
        
                    const SizedBox(
                      height: 20,
                    ),
        
        
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        children: [
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('07 January, 2024', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xffFFFFFF),),),
                              Text('Stay protected', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xffFFFFFF),),),
                            ],
                          ),
        
                          const Spacer(),
                          Container(
                            height: 30,
                            width: 76,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            ),
                            child: const Center(
                              child: Text('Renew',
                                style: TextStyle(
                                  fontFamily: 'Poppins Regular',
                                  fontSize: 12,
                                  color: Color(0xff6763EE),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
        
                    const Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
        
                            Text('Registration sticker expires on', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xffFFFFFF),),),
        
                          ],
                        ),
                      ),
                    ),
        
        
        
        
        
                    const SizedBox(
                      height: 20,
                    ),
        

        
                    //Missing



                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: LinearProgressIndicator(
                            value: 0.3,
                            minHeight: 4,
                            backgroundColor: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                            valueColor: AlwaysStoppedAnimation<Color>(Color(0xff42FF00)),
                          ),

                        ),




                    const SizedBox(
                      height: 20,
                    ),
        
        
        
        
        
        
        
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        children: [
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('20 January, 2024', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xffFFFFFF),),),
                            ],
                          ),


        
                          const Spacer(),
                          Container(
                            height: 30,
                            width: 76,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            ),
                            child: const Center(
                              child: Text('Renew',
                                style: TextStyle(
                                  fontFamily: 'Poppins Regular',
                                  fontSize: 12,
                                  color: Color(0xff6763EE),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
        
                  ],
                ),
              ),
            ),





        
        
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                  height: 450,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)
                    ),

                    color: Color(0xff6763EE).withOpacity(0.3),
                  ),

                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 18,
                          ),
                          Text('Redeem at',  style: TextStyle( fontFamily: 'Poppins Semibold',  fontSize: 18,  color: Color(0xff6763EE),),),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(child: Container(
                                height: 150,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(18)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      Text('Oil Next',  style: TextStyle( fontFamily: 'Poppins Semibold',  fontSize: 14,  color: Color(0xff6763EE),),),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      SvgPicture.asset('assets/icons/Oil.svg'),

                                      const SizedBox(
                                        height: 10,
                                      ),

                                      const LinearProgressIndicator(
                                        value: 0.78,
                                        backgroundColor:  Color(0xffDEDEDE),
                                        borderRadius: BorderRadius.all(Radius.circular(6)),
                                        minHeight: 23,
                                        valueColor: AlwaysStoppedAnimation(Color(0xff6763EE)),
                                      ),

                                      const SizedBox(
                                        height: 10,
                                      ),

                                      Text('23 January, 2024',  style: TextStyle( fontFamily: 'Poppins Regular',  fontSize: 12,  color: Color(0xff6763EE),),),


                                    ],
                                  ),
                                ),
                              )
                              ),


                              const SizedBox(
                                width: 12,
                              ),



                              //Tire Next
                              Expanded(child: Container(
                                height: 150,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(18)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      const Text('Tires Next',  style: TextStyle( fontFamily: 'Poppins Semibold',  fontSize: 14,  color: Color(0xff6763EE),),),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      SvgPicture.asset('assets/icons/Tire.svg'),


                                      const SizedBox(
                                        height: 10,
                                      ),

                                      const LinearProgressIndicator(
                                        value: 0.60,
                                        backgroundColor:  Color(0xffDEDEDE),
                                        borderRadius: BorderRadius.all(Radius.circular(6)),
                                        minHeight: 23,
                                        valueColor: AlwaysStoppedAnimation(Color(0xff6763EE)),
                                      ),

                                      const SizedBox(
                                        height: 10,
                                      ),

                                      Text('29 April, 2024',  style: TextStyle( fontFamily: 'Poppins Regular',  fontSize: 12,  color: Color(0xff6763EE),),),


                                    ],
                                  ),
                                ),

                              )),

                            ],
                          ),

                          const SizedBox(
                            height: 20,
                          ),


                          //Get Help Now
                          const Text('Get Help Now',  style: TextStyle( fontFamily: 'Poppins Semibold',  fontSize: 18,  color: Color(0xff6763EE),),),

                          const SizedBox(
                            height: 10,
                          ),

                          //Get Help Box

                          Container(
                            height: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(26)),
                              gradient: LinearGradient(
                                colors: [
                                  const Color(0xff6763EE)
                                      .withOpacity(0.7), // Purple with 67% opacity
                                  const Color(0xff6763EE)
                                      .withOpacity(1), // Purple with 100% opacity
                                ],
                              ),
                            ),



                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Container(
                                height: 20,

                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color(0xffFFFFFF).withOpacity(0.5)),
                                    color: Color(0xff1D1D1D).withOpacity(0.15),
                                    borderRadius: const BorderRadius.all(Radius.circular(20))
                                ),



                                child: Row(

                                  children: [
                                    const Spacer(
                                      flex: 2,
                                    ),
                                    Image.asset('assets/pictures/Jeep.png'),

                                    Spacer(
                                      flex: 2,
                                    ),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          '24/7 Support',
                                          style: TextStyle(
                                              fontFamily: 'Poppins Semibold',
                                              fontSize: 14,
                                              color: Color(0xffFFFFFF)),
                                        ),

                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          child: Center(
                                              child: Text('Contact Us', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff6763EE)),)),
                                          height: 30,
                                          width: 100,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(Radius.circular(8)),
                                          ),
                                        )
                                      ],
                                    ),


                                    const Spacer(flex: 2),
                                  ],

                                ),
                              ),
                            ),
                          ),






                        ],
                      ),
                    ),


                ),
              ],
            )




        
        
        
        
          ],
        
        
        
        
        
        
        
        
        
        ),
      ),









      //
      //
      //
      //
      // bottomNavigationBar: Stack(
      //   alignment: Alignment.bottomCenter,
      //   children: [
      //     ClipRRect(
      //
      //       borderRadius: const BorderRadius.only(
      //         topLeft: Radius.circular(30),
      //         topRight: Radius.circular(30),
      //       ),
      //
      //       child: Container(
      //         height: 106, // Adjusted height
      //         decoration: const BoxDecoration(
      //         color: Colors.transparent,
      //         ),
      //
      //
      //         child: BottomNavigationBar(
      //           backgroundColor: Color(0xff6763EE).withOpacity(0.9), // Set to transparent
      //
      //
      //           //backgroundColor: Colors.green,
      //
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
