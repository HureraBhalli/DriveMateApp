// import 'dart:ffi';
import 'dart:ui';
import 'package:drive_mate/Book%20Service/Services.dart';
import 'package:drive_mate/Buy%20Vehicle/Buy.dart';
import 'package:drive_mate/Components/My%20Buttons.dart';
import 'package:drive_mate/Nav%20Bar/Garage.dart';
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


class Home extends StatefulWidget {
  static const String id = 'Home';

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;


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

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Container(
          child: AppBar(
            toolbarHeight: 100,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(
                children: [
                  Text(
                    'Welcome to ',
                    style:
                        TextStyle(fontFamily: 'Poppins Semibold', fontSize: 18),
                  ),
                  Text(
                    'DriveMate',
                    style: TextStyle(
                        fontFamily: 'Poppins Semibold',
                        fontSize: 18,
                        color: Color(0xff6763EE)),
                  ),
                ],
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2,
                      color: Color(0xff6763EE),
                    ),
                  ),
                  child: GestureDetector(

                    onTap: ()
                    {
                      Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) => Profile(),
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



                    child: const CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage('assets/pictures/Hurera.jpeg'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 24,
                    ),
                    SvgPicture.asset('assets/icons/Search.svg'),
                    const SizedBox(
                      width: 14,
                    ),

                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search for services...',
                          hintStyle: TextStyle(
                              fontFamily: 'Poppins Semibold',
                              fontSize: 14,
                              color: Color(0xff6763EE)),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                            fontFamily: 'Poppins Semibold',
                            fontSize: 14,
                            color: Color(0xff6763EE)),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: SvgPicture.asset('assets/icons/Filtersvg.svg'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),



            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Container(
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
                        Image.asset('assets/pictures/blackcar.png'),
                        Spacer(
                          flex: 2,
                        ),
                        const Text(
                          'Ford Mustang\n2023 A34567',
                          style: TextStyle(
                              fontFamily: 'Poppins Semibold',
                              fontSize: 14,
                              color: Color(0xffFFFFFF)),
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
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'My Wallet',
                    style: TextStyle(
                        fontFamily: 'Poppins Semibold',
                        fontSize: 18,
                        color: Color(0xff6763EE)),
                  )),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: Container(
                      height: 133,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff6763EE)),
                          color: Color(0xff706CEF).withOpacity(0.15),
                          borderRadius: BorderRadius.all(Radius.circular(14))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 18,
                            ),
                            const Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Credit Card',
                                    style: TextStyle(
                                        fontFamily: 'Poppins Regular',
                                        fontSize: 12,
                                        color: Colors.black))),
                            const SizedBox(
                              height: 2,
                            ),
                            const Align(
                                alignment: Alignment.centerLeft,
                                child: Text('\$234.00',
                                    style: TextStyle(
                                        fontFamily: 'Poppins Bold',
                                        fontSize: 22,
                                        color: Color(0xff6763EE)))),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Row(children: [
                                Image.asset('assets/icons/Bank.png'),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Personal',
                                          style: TextStyle(
                                              fontFamily: 'Poppins Regular',
                                              fontSize: 12,
                                              color: Color(0xff000000)
                                                  .withOpacity(0.6))),
                                      const Text('*** ***** *** 2341',
                                          style: TextStyle(
                                              fontFamily: 'Poppins Medium',
                                              fontSize: 15,
                                              color: Color(0xff000000))),
                                    ])
                              ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Flexible(
                    flex: 1,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => Wallet(),
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
                        width: screenWidth * 0.31,
                        height: 133,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff6763EE)),
                            color: Color(0xff706CEF).withOpacity(0.15),
                            borderRadius: BorderRadius.all(Radius.circular(14))),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 18,
                            ),
                            const Text('Cash Back',
                                style: TextStyle(
                                    fontFamily: 'Poppins Regular',
                                    fontSize: 12,
                                    color: Colors.black)),
                            const SizedBox(
                              height: 4,
                            ),
                            Text('\$234.00',
                                style: TextStyle(
                                    fontFamily: 'Poppins Bold',
                                    fontSize: 22,
                                    color: Color(0xff6763EE))),
                            const SizedBox(
                              height: 10,
                            ),
                            SvgPicture.asset('assets/icons/Dollar.svg'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Row(
                  children: [
                
                Flexible(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Friends',
                        style: TextStyle(
                            fontFamily: 'Poppins Semibold',
                            fontSize: 18,
                            color: Color(0xff6763EE)),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      GestureDetector(

                        onTap: (){
                          Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) => ReferFriend(),
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
                          height: 66,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff6763EE)),
                              color: Color(0xff706CEF).withOpacity(0.15),
                              borderRadius: BorderRadius.all(Radius.circular(14))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Row(
                              children: [
                                Text('Refer a Friend',
                                    style: TextStyle(
                                        fontFamily: 'Poppins Semibold',
                                        fontSize: 14,
                                        color: Color(0xff6763EE))),
                                Spacer(
                                  flex: 2,
                                ),
                                SvgPicture.asset('assets/icons/Friend.svg'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                


                
                Flexible(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Services',
                        style: TextStyle(
                            fontFamily: 'Poppins Semibold',
                            fontSize: 18,
                            color: Color(0xff6763EE)),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(

                        height: 66,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff6763EE)),
                            color: Color(0xff706CEF).withOpacity(0.15),
                            borderRadius: BorderRadius.all(Radius.circular(14))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Row(
                            children: [
                              Text('Active',
                                  style: TextStyle(
                                      fontFamily: 'Poppins Semibold',
                                      fontSize: 14,
                                      color: Color(0xff6763EE))),
                              Spacer(
                                flex: 2,
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: const Center(
                                    child: Text('3',
                                        style: TextStyle(
                                            fontFamily: 'Poppins Bold',
                                            fontSize: 16,
                                            color: Color(0xff6763EE)))),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 30,
            ),




            GestureDetector(
              child: MyButton(
                title: 'Book a Service!',
                onpress: () {
                  Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) => Services(),
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
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),

      // bottomNavigationBar:  ClipRRect(
      //   borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30),),
      //
      //   child: Container(
      //    height: 106,
      //
      //    decoration: const BoxDecoration(
      //    ),
      //    child: BottomNavigationBar(
      //    backgroundColor: Color(0xff6763EE).withOpacity(0.9),
      //
      //      items: [
      //        BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/Home.svg',color: _selectedIndex == 0 ? Color(0xffFFFFFF) : Color(0xffFFFFFF).withOpacity(0.7), ), label: 'Home',),
      //        BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/Garage.svg', color: _selectedIndex == 1 ? Color(0xffFFFFFF) : Color(0xffFFFFFF).withOpacity(0.7),), label: 'Garage'),
      //        BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/Wallet.svg', color: _selectedIndex == 2 ? Color(0xffFFFFFF) : Color(0xffFFFFFF).withOpacity(0.7),), label: 'Wallet'),
      //        BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/Profile.svg', color: _selectedIndex == 3 ? Color(0xffFFFFFF) : Color(0xffFFFFFF).withOpacity(0.7),), label: 'Profile'),
      //      ],
      //
      //      selectedLabelStyle: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 12, color: Color(0xffFFFFFF)),
      //      unselectedLabelStyle: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xffFFFFFF)),
      //
      //      //  selectedLabelStyle: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 12, color: Color(0xffFFFFFF)),
      //      unselectedItemColor: Color(0xffFFFFFF).withOpacity(0.7),
      //      unselectedIconTheme:  IconThemeData(color: Color(0xffFFFFFF).withOpacity(0.2)) ,
      //      selectedItemColor: Color(0xffFFFFFF),
      //      type: BottomNavigationBarType.fixed,
      //      currentIndex: _selectedIndex,
      //      onTap: _onItemTapped,
      //
      //
      //    ),
      //   ),
      //
      // ),

      bottomNavigationBar: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
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
