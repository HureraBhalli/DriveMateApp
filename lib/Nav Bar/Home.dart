// import 'dart:ffi';
import 'dart:ui';
import 'package:drive_mate/Components/My%20Buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';



class Home extends StatelessWidget {

  static const String id = 'Home';

  const Home({super.key});



  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;


    return Scaffold(
      backgroundColor: Colors.white,

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Container(
          padding: EdgeInsets.only(top: 14),
          child: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(
                children: [
                  Text('Welcome to ', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 18),),
                  Text('DriveMate', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 18, color: Color(0xff6763EE)), ),
                ],
              ),
            ),


            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2,
                      color: Color(0xff6763EE),
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/D4D03AQHUul13YecS8w/profile-displayphoto-shrink_800_800/0/1704749589763?e=2147483647&v=beta&t=JYsMHXPwIage3jg9C-u20tc9RUsxwmgJez4ZnDPkFkw'),
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
              height: 30,
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
                        hintText:  'Search for services...',
                        hintStyle: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xff6763EE)),
                        border: InputBorder.none,
                      ),
                          style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xff6763EE)),
        
                        ),
                    ),
        
                    // Text('Search for ', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14),),
                    // Text('services', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xff6763EE)), ),
                    // Text('... ', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14),),
        
        
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
                      const Color(0xff6763EE).withOpacity(0.7), // Purple with 67% opacity
                      const Color(0xff6763EE).withOpacity(1), // Purple with 100% opacity
                   ],
        
                ),
              ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    height: 20,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffFFFFFF).withOpacity(0.5)),
                      color: Color(0xff1D1D1D).withOpacity(0.15),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
        
                    child: Row(
                        children: [
                          Spacer(flex: 2,),
                          Image.asset('assets/pictures/blackcar.png'),
                          Spacer(flex: 2,),
                          const Text('Ford Mustang\n2023 A34567', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xffFFFFFF)),),
                          Spacer(flex: 5),
                          SvgPicture.asset('assets/icons/memory_plus.svg'),
                          Spacer(flex: 2),
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
                  child: Text('My Wallet', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 18, color: Color(0xff6763EE)),
                  )),
            ),
        
            const SizedBox(
              height: 12,
            ),
        
        
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 22.0),
               child: Row(
                   children: [
                     Container(
                       width: screenWidth * 0.55,
                       height: 133,
                       decoration: BoxDecoration(
                           border: Border.all(color: Color(0xff6763EE)),
                           color: Color(0xff706CEF).withOpacity(0.15),
                           borderRadius: BorderRadius.all(Radius.circular(14))
                       ),
                       child: Padding(
                         padding: const EdgeInsets.only(left: 14.0),
                         child: Column(
                           children: [
        
                             const SizedBox(
                               height: 18,
                             ),
        
                           const Align(
                               alignment: Alignment.centerLeft,
                               child: Text('Credit Card', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Colors.black))),
                             const SizedBox(
                               height: 2,
                             ),
                             const Align(
                                 alignment: Alignment.centerLeft,
                                 child: Text('\$234.00', style: TextStyle(fontFamily: 'Poppins Bold', fontSize: 22, color: Color(0xff6763EE)))),
        
                             const SizedBox(
                               height: 10,
                             ),
        
                             Padding(
                               padding: const EdgeInsets.only(left: 5.0),
                               child: Row(
                                 children: [
                                   Image.asset('assets/icons/Bank.png'),
                                   const SizedBox(
                                     width: 10,
                                   ),
        
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Personal', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff000000).withOpacity(0.6))),
                                        Text('*** ***** *** 2341', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 15, color: Color(0xff000000))),
                                      ]
                                   )
                                 ]
                               ),
                             ),
        
        
        
                           ],
                         ),
                       ),
                     ),
        
                     const SizedBox(
                       width: 12,
                     ),
        
        
                     Container(
                       width: screenWidth * 0.31,
                       height: 133,
                       decoration: BoxDecoration(
                           border: Border.all(color: Color(0xff6763EE)),
                           color: Color(0xff706CEF).withOpacity(0.15),
                           borderRadius: BorderRadius.all(Radius.circular(14))
                       ),
        
                       child: Column(
                         children: [
                           const SizedBox(
                             height: 18,
                           ),
                           const Text('Credit Card', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Colors.black)),
                           const SizedBox(
                             height: 4,
                           ),
                         Text('\$234.00', style: TextStyle(fontFamily: 'Poppins Bold', fontSize: 22, color: Color(0xff6763EE))),
                           const SizedBox(
                             height: 10,
                           ),
                           SvgPicture.asset('assets/icons/Dollar.svg'),
                         ],
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
        
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Friends', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 18, color: Color(0xff6763EE)),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
        
                      Container(
                          width: screenWidth * 0.51,
                          height: 66,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff6763EE)),
                              color: Color(0xff706CEF).withOpacity(0.15),
                              borderRadius: BorderRadius.all(Radius.circular(14))
                          ),
                        
        
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Row(
                            children: [
                              Text('Refer a Friend', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xff6763EE))),
                              Spacer(flex: 2,),
                              SvgPicture.asset('assets/icons/Friend.svg'),
                            ],
                          ),
                        ),
                      
                      
                      
                      ),
                    ],
                  ),
        
                  const SizedBox(
                    width: 12,
                  ),
        
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Services', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 18, color: Color(0xff6763EE)),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
        
                      Container(
                          width: screenWidth * 0.35,
                          height: 66,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff6763EE)),
                              color: Color(0xff706CEF).withOpacity(0.15),
                              borderRadius: BorderRadius.all(Radius.circular(14))
                          ),
        
        
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Row(
                            children: [
                              Text('Active', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xff6763EE))),
                              Spacer(flex: 2,),
                              Container(
                                height: 30,
                                width: 30,
        
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6),
        
                                ),
                                child: const Center(child: Text('3', style: TextStyle(fontFamily: 'Poppins Bold', fontSize: 16, color: Color(0xff6763EE)))),
                              ),
                            ],
                          ),
                        ),
                      ),
        
                    ],
                  ),
        
        
        
                ]
        
              ),
            ),
        
        
        
        
            const SizedBox(
              height: 30,
            ),
        
        
        
        
        
        
        
        
            GestureDetector(
              child: MyButton(
                title: 'Book a Service!', onpress: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => Home(),
                  transitionDuration: Duration(milliseconds:220),
                  reverseTransitionDuration: Duration(milliseconds: 220),
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
        
        
        
        
            BottomNavigationBar(
              backgroundColor: Color(0xff6763EE).withOpacity(0.9),

                items: [
              BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/Home.svg'), label: 'Home'),
              BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/Home.svg'), label: 'Home'),
              BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/Home.svg'), label: 'Home'),

            ]),
        
        
        
          ],
        
        
        ),
      ),

    );
  }
}
