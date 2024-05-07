import 'package:drive_mate/Components/My%20Buttons.dart';
import 'package:drive_mate/Nav%20Bar/Garage.dart';
import 'package:drive_mate/Nav%20Bar/Home.dart';
import 'package:drive_mate/Nav%20Bar/Wallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';



class Profile extends StatefulWidget {
  static const String id = 'Profile';

  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _selectedIndex = 3;

  void _onItemTapped(int index) {
    switch (index) {
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

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xffF3F3F3),


      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(70),
      //   child: Container(
      //     child: AppBar(
      //       toolbarHeight: 70,
      //       centerTitle: true,
      //       title: const Text(
      //         'Profile',
      //         style: TextStyle(
      //             fontFamily: 'Poppins Semibold',
      //             fontSize: 16,
      //             color: Colors.white),
      //       ),
      //       backgroundColor: Color(0xff6763EE),
      //       actions: [
      //         Padding(
      //           padding: const EdgeInsets.symmetric(horizontal: 20.0),
      //           child: Container(
      //             decoration: BoxDecoration(
      //               shape: BoxShape.circle,
      //               border: Border.all(
      //                 width: 2,
      //                 color: Colors.white,
      //               ),
      //             ),
      //             child: const CircleAvatar(
      //               radius: 24,
      //               backgroundImage: AssetImage('assets/pictures/Hurera.jpeg'),
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),


      // body: Container(
      //   decoration: BoxDecoration(
      //     shape: BoxShape.circle,
      //     border: Border.all(
      //       width: 2,
      //       color: Color(0xff6763EE),
      //     ),
      //   ),
      //   child: Stack(
      //     children: [
      //       Positioned(
      //         right: 0,
      //         bottom: 0,
      //         child: Row(
      //        //   children: actions.map<Widget>((action) {
      //        //      return Padding(
      //        //        padding: const EdgeInsets.symmetric(horizontal: 20.0),
      //        //        child: action,
      //        //      );
      //          // }).toList(),
      //         ),
      //       ),
      //       CircleAvatar(
      //         radius: 24,
      //         backgroundImage: AssetImage('assets/pictures/Hurera.jpeg'),
      //       ),
      //     ],
      //   ),
      // ),



      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 265,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
                gradient: LinearGradient(
                  colors: [
                    Color(0xff6763EE).withOpacity(0.7),
                    Color(0xff6763EE).withOpacity(1),
                  ],
                ),
              ),
        
        
              child: Stack(
                children: [
                  const Positioned(
                    top: 65,
                    left: 0,
                    right: 0,
        
        
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Profile', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 16, color: Colors.white,)),
                      ],
                    ),
                  ),
        
        
        
                  Padding(
                    padding: const EdgeInsets.only(top: 114.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                       // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 2,
                                color: Colors.white,
                              ),
                            ),
        
                            child: const CircleAvatar(
                              radius: 34,
                              backgroundImage: AssetImage('assets/pictures/Hurera.jpeg'),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text('John Adams', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 20, color: Colors.white,)),
                          Text('@johnadams', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Colors.white,)),
        
        
                        ],
        
                      ),
                    ),
                  ),
        
        
        
                ],
              ),
            ),
        
        
        
            //ButtonsList


        
        
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Column(
                children: [
        
                  const SizedBox(
                    height: 20,
                  ),
        
        
                  //Name
                  Container(
                    height: 54,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white
                    ),
        
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/Profile1.svg'),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text('Name', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xff1D1D1D),)),
                          const Spacer(
                            flex: 1,
                          ),
                          const Text('John Adams', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 12, color: Color(0xff6763EE),)),
                          const SizedBox(
                            width: 12,
                          ),
                          SvgPicture.asset('assets/icons/Forward.svg'),
                        ],
                      ),
                    ),
                  ),
        
        
        
                  const SizedBox(
                    height: 12,
                  ),
        
                  //Email
                  Container(
                    height: 54,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white
                    ),
        
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/Email.svg'),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text('Email', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xff1D1D1D),)),
                          const Spacer(
                            flex: 1,
                          ),
                          const Text('johnadmas@gmail.com', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 12, color: Color(0xff6763EE),)),
                          const SizedBox(
                            width: 12,
                          ),
                          SvgPicture.asset('assets/icons/Forward.svg'),
                        ],
                      ),
                    ),
                  ),
        
        
        
        
        
        
        
                  const SizedBox(
                    height: 12,
                  ),

        
                  //Adress
                  Container(
                    height: 54,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white
                    ),
        
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/Adress.svg'),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text('Address', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xff1D1D1D),)),
                          const Spacer(
                            flex: 1,
                          ),
                          const Text('55 St, New York', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 12, color: Color(0xff6763EE),)),
                          const SizedBox(
                            width: 12,
                          ),
                         // SvgPicture.asset('assets/icons/Forward.svg'),
                        ],
                      ),
                    ),
                  ),
        
        
        
        
        
                  const SizedBox(
                    height: 12,
                  ),


                  //Mobile
                  Container(
                    height: 54,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white
                    ),
        
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/Mobile.svg'),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text('Mobile', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xff1D1D1D),)),
                          const Spacer(
                            flex: 1,
                          ),
                          const Text('0930237283728', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 12, color: Color(0xff6763EE),)),
                          const SizedBox(
                            width: 12,
                          ),
                          SvgPicture.asset('assets/icons/Forward.svg'),
                        ],
                      ),
                    ),
                  ),
        
        
        
        
        
                  const SizedBox(
                    height: 12,
                  ),


                  //Notification
                  Container(
                    height: 54,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white
                    ),

                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/Notification.svg'),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text('Notification', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xff1D1D1D),)),
                          const Spacer(
                            flex: 10,
                          ),


                          //Button Pending

                          Center(
                            child: Transform.scale(
                              scale: 0.8,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isSwitched = !isSwitched;
                                  });
                                },
                                child: Container(
                                  width: 50.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: isSwitched ? Color(0xff6763EE) : Color(0xff6763EE).withOpacity(0.5),
                                  ),
                                  child: Stack(
                                    children: [
                                      AnimatedPositioned(
                                        duration: Duration(milliseconds: 200),
                                        curve: Curves.easeInOut,
                                        left: isSwitched ? 20.0 : 0.0,
                                        child: Container(
                                          width: 25.0,
                                          height: 30.0,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                          ),

                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),







                        ],
                      ),
                    ),
                  ),





                  const SizedBox(
                    height: 12,
                  ),
        
                  //Help
                  Container(
                    height: 54,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white
                    ),
        
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/Help.svg'),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text('Help', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xff1D1D1D),)),
                          const Spacer(
                            flex: 1,
                          ),
                         // const Text('0930237283728', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 12, color: Color(0xff6763EE),)),
                         //  const SizedBox(
                         //    width: 12,
                         //  ),
                       //   SvgPicture.asset('assets/icons/Forward.svg'),
                        ],
                      ),
                    ),
                  ),
        
        
        
        
        
        
        
                ],
              ),
            ),
        
        
        
        
        
        
            const SizedBox(
              height: 12,
            ),





            
            //Track My Car

            GestureDetector(
              onTap: () {

                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => Profile(),
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



              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Container(
                  height: 54,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff6763EE).withOpacity(0.7), // Red with 67% opacity
                        Color(0xff6763EE).withOpacity(1), // Blue with 67% opacity
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
              
                    borderRadius: BorderRadius.circular(20),
                    // color: color,
                  ),
              
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       SvgPicture.asset('assets/icons/LocationWhite.svg'),
                       const SizedBox(
                         width: 10,
                       ),
                       const Text('Track my car!', style: TextStyle(fontFamily: 'Poppins SemiBold', fontSize: 14, color: Colors.white),),
                     ],
                   ),
                ),
              ),
            ),




            const SizedBox(
              height: 20,
            ),








          ],
        
        ),
      ),




      //
      // Container(
      //   decoration: BoxDecoration(
      //     shape: BoxShape.circle,
      //     border: Border.all(
      //       width: 2,
      //       color: Color(0xff6763EE),
      //     ),
      //   ),
      //   child: Stack(
      //     children: [
      //       Positioned(
      //         right: 0,
      //         bottom: 0,
      //         child: Row(
      //           //   children: actions.map<Widget>((action) {
      //           //      return Padding(
      //           //        padding: const EdgeInsets.symmetric(horizontal: 20.0),
      //           //        child: action,
      //           //      );
      //           // }).toList(),
      //         ),
      //       ),
      //       CircleAvatar(
      //         radius: 24,
      //         backgroundImage: AssetImage('assets/pictures/Hurera.jpeg'),
      //       ),
      //     ],
      //   ),
      // ),










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
                selectedLabelStyle: const TextStyle(
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
