import 'package:drive_mate/Nav%20Bar/Home.dart';
import 'package:drive_mate/Nav%20Bar/Wallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';


class ReferFriend extends StatelessWidget {
  static const String id = 'ReferFriend';

  const ReferFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F3F3),


      appBar: AppBar(
        toolbarHeight: 88,
        backgroundColor: Color(0xff6763EE).withOpacity(0.9),
        automaticallyImplyLeading: false,

        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Share with Friends', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 18, color: Colors.white),),
              const Spacer(
                flex: 2,
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => Home(),
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

                  child: SvgPicture.asset('assets/icons/Cross.svg')),
            ],
          ),
        ),
      ),




      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            children: [


              //Frist Lines Text

              const SizedBox(
                height: 30,
              ),
              const Align(
                alignment: Alignment.topLeft,
                  child: Text('Refer a friend using your own code!', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 14, color: Color(0xff0000000)),)),
              Row(
                children: [
                  const Text('2dk487f34', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 40, color: Color(0xff0000000)),),
                  const Spacer(
                    flex: 1,
                  ),
                  SvgPicture.asset('assets/icons/Copy.svg'),
                ],
              ),


              const SizedBox(
                height: 30,
              ),
              Container(
                height: 261,
                width: 261,
                child:  SvgPicture.asset('assets/icons/QRCode.svg', fit: BoxFit.none,),

                decoration: const BoxDecoration(
                 color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
              ),

              const SizedBox(
                height: 30,
              ),


              const Text('Point your camera at the QR code \n to receive the card', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 14, color: Color(0xff6763EE)),
                textAlign: TextAlign.center),


              const SizedBox(
                height: 30,
              ),

              Container(
                height: 58,
                decoration: const BoxDecoration(
                  color: Color(0xff6763EE),
                  borderRadius: BorderRadius.all(Radius.circular(14))
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [

                      SvgPicture.asset('assets/icons/Copy1.svg'),
                      const SizedBox(
                        width: 10,
                      ),
                      Text('Copy link', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 14, color: Colors.white)),

                    ],
                  ),
                ),
              ),


              const SizedBox(
                height: 12,
              ),





              //Center Card
              Container(
                height: 270,
                decoration: const BoxDecoration(
                    color: Color(0xff6763EE),
                    borderRadius: BorderRadius.all(Radius.circular(14))
                ),


                child: Column(
                  children: [


                    Container(
                      height: 54,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 0.5)
                      ),


                     child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 18.0),
                       child: Row(
                          children: [

                            SvgPicture.asset('assets/icons/Message.svg'),
                            const SizedBox(
                              width: 10,
                            ),
                            Text('Text you card', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 14, color: Colors.white)),
                          ],
                        ),
                     ),
                    ),


                    Container(
                      height: 54,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 0.5)
                      ),


                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Row(
                          children: [

                            SvgPicture.asset('assets/icons/Mail.svg'),
                            const SizedBox(
                              width: 10,
                            ),
                            Text('Email your card', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 14, color: Colors.white)),
                          ],
                        ),
                      ),
                    ),




                    Container(
                      height: 54,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 0.5)
                      ),


                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Row(
                          children: [

                            SvgPicture.asset('assets/icons/Whatsapp.svg'),
                            const SizedBox(
                              width: 10,
                            ),
                            Text('Send via Whatsapp', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 14, color: Colors.white)),
                          ],
                        ),
                      ),
                    ),




                    Container(
                      height: 54,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 0.5)
                      ),


                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Row(
                          children: [

                            SvgPicture.asset('assets/icons/LinkdIn.svg'),
                            const SizedBox(
                              width: 10,
                            ),
                            Text('Send via LinkedIn', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 14, color: Colors.white)),
                          ],
                        ),
                      ),
                    ),



                    Container(
                      height: 54,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 0.5)
                      ),


                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Row(
                          children: [

                            SvgPicture.asset('assets/icons/3dots.svg'),
                            const SizedBox(
                              width: 10,
                            ),
                            Text('Send another way', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 14, color: Colors.white)),
                          ],
                        ),
                      ),
                    ),




                  ],
                ),

              ),







              //Bottom Cards

              const SizedBox(
                height: 12,
              ),

              Container(
                height: 58,
                decoration: const BoxDecoration(
                    color: Color(0xff6763EE),
                    borderRadius: BorderRadius.all(Radius.circular(14))
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [

                      SvgPicture.asset('assets/icons/LinkdIn.svg'),
                      const SizedBox(
                        width: 10,
                      ),
                      Text('Post to LinkedIn', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 14, color: Colors.white)),

                    ],
                  ),
                ),
              ),


              const SizedBox(
                height: 4,
              ),



              Container(
                height: 58,
                decoration: const BoxDecoration(
                    color: Color(0xff6763EE),
                    borderRadius: BorderRadius.all(Radius.circular(14))
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [

                      SvgPicture.asset('assets/icons/Facebook.svg'),
                      const SizedBox(
                        width: 10,
                      ),
                      Text('Post to Facebook', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 14, color: Colors.white)),

                    ],
                  ),
                ),
              ),





              const SizedBox(
                height: 12,
              ),


              Container(
                height: 58,
                decoration: const BoxDecoration(
                    color: Color(0xff6763EE),
                    borderRadius: BorderRadius.all(Radius.circular(14))
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [

                      SvgPicture.asset('assets/icons/Send.svg'),
                      const SizedBox(
                        width: 10,
                      ),
                      Text('Send QR code', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 14, color: Colors.white)),

                    ],
                  ),
                ),
              ),


              const SizedBox(
                height: 40,
              ),






            ],
          ),
        ),
      ),




    );

  }
}
