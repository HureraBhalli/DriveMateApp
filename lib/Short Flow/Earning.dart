import 'package:drive_mate/Nav%20Bar/Wallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';


class Earning extends StatelessWidget {
  static const String id = 'Earning';

  const Earning({super.key});

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
                const Text('Earnings through Refer!', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 18, color: Colors.white),),
                const Spacer(
                  flex: 2,
                ),
                GestureDetector(
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
              SizedBox(
                height: 30,
              ),
              Container(
                height: 118,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  border: Border.all(color:  Color(0xff6763EE), width: 2),
                ),
        
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SizedBox(
                    //   height: 15,
                    // ),
                    Text('Referral Earnings', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 14, color: Color(0xff000000)),),
                    SizedBox(
                      height: 4,
                    ),
                    Text('\$ 10,233', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 28, color: Color(0xff6763EE)),),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Total referrals: ', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 11, color: Color(0xff000000)),),
                        Text(' 10 ', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 11, color: Color(0xff000000)),),
        
                      ],
                    ),
        
                  ],
                ),
              ),
        
        
        
        
              const SizedBox(
                height: 12,
              ),
        
              const Align(
                alignment: Alignment.topLeft,
                  child: Text('Earnings', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 16, color: Color(0xff000000)),)
              ),
        
        
        
        
        
              Column(
                children: [
        
                  const SizedBox(
                    height: 30,
                  ),
                  
                  
        
                  Container(
                    height: 56,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white
                    ),
        
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage('assets/pictures/Hurera.jpeg'),
                          ),
                          SizedBox(
                            width: 12,
                          ),
        
                          Text('Joss Bud', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff0A0A0A),)),
                          SizedBox(
                            width: 6,
                          ),
                          Text('\$ 10,233', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 12, color: Color(0xff6763EE),)),
        
                          Spacer(
                            flex: 1,
                          ),
                          Text('12:32PM', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff0A0A0A))),
                        ],
                      ),
                    ),
                  ),
        
                  
                  const SizedBox(
                    height: 8,
                  ),
        
        
        
                  Container(
                    height: 56,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white
                    ),
                    

                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage('assets/pictures/Hurera.jpeg'),
                          ),
                          SizedBox(
                            width: 12,
                          ),
        
                          Text('Joss Bud', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff0A0A0A),)),
                          SizedBox(
                            width: 6,
                          ),
                          Text('\$ 10,233', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 12, color: Color(0xff6763EE),)),
        
                          Spacer(
                            flex: 1,
                          ),
                          Text('12:32PM', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff0A0A0A),)),
                        ],
                      ),
                    ),
                  ),



                  const SizedBox(
                    height: 8,
                  ),


        
        
                  Container(
                    height: 56,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white
                    ),
        
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage('assets/pictures/Hurera.jpeg'),
                          ),
                          SizedBox(
                            width: 12,
                          ),
        
                          Text('Joss Bud', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff0A0A0A),)),
                          SizedBox(
                            width: 6,
                          ),
                          Text('\$ 10,233', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 12, color: Color(0xff6763EE),)),
        
                          Spacer(
                            flex: 1,
                          ),
                          Text('12:32PM', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff0A0A0A),)),
                        ],
                      ),
                    ),
                  ),
        
                  const SizedBox(
                    height: 8,
                  ),
        
        


                  //Refrall Earning
                  Container(
                    height: 56,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white
                    ),
        
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage('assets/pictures/Hurera.jpeg'),
                          ),
                          SizedBox(
                            width: 12,
                          ),
        
                          Text('Joss Bud', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff0A0A0A),)),
                          SizedBox(
                            width: 6,
                          ),
                          Text('\$ 10,233', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 12, color: Color(0xff6763EE),)),
        
                          Spacer(
                            flex: 1,
                          ),
                          Text('12:32PM', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff0A0A0A),)),
                        ],
                      ),
                    ),
                  ),
        
                  const SizedBox(
                    height: 8,
                  ),
        
        
        
                  Container(
                    height: 56,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white
                    ),


        
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage('assets/pictures/Hurera.jpeg'),
                          ),
                          SizedBox(
                            width: 12,
                          ),
        
                          Text('Joss Bud', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff0A0A0A),)),
                          SizedBox(
                            width: 6,
                          ),
                          Text('\$ 10,233', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 12, color: Color(0xff6763EE),)),
        
                          Spacer(
                            flex: 1,
                          ),
                          Text('12:32PM', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff0A0A0A),)),
                        ],
                      ),
                    ),
                  ),


        
                  const SizedBox(
                    height: 8,
                  ),
        
        
        
        
                  Container(
                    height: 56,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white
                    ),
        
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage('assets/pictures/Hurera.jpeg'),
                          ),
                          SizedBox(
                            width: 12,
                          ),
        
                          Text('Joss Bud', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff0A0A0A),)),
                          SizedBox(
                            width: 6,
                          ),
                          Text('\$ 10,233', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 12, color: Color(0xff6763EE),)),
        
                          Spacer(
                            flex: 1,
                          ),
                          Text('12:32PM', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff0A0A0A),)),
                        ],
                      ),
                    ),
                  ),
        
                  const SizedBox(
                    height: 8,
                  ),
        
        
        
        
                  Container(
                    height: 56,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white
                    ),
        
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage('assets/pictures/Hurera.jpeg'),
                          ),
                          SizedBox(
                            width: 12,
                          ),
        
                          Text('Joss Bud', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff0A0A0A),)),
                          SizedBox(
                            width: 6,
                          ),
                          Text('\$ 10,233', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 12, color: Color(0xff6763EE),)),
        
                          Spacer(
                            flex: 1,
                          ),
                          Text('12:32PM', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff0A0A0A),)),
                        ],
                      ),
                    ),
                  ),
        
                  const SizedBox(
                    height: 8,
                  ),
        
        
        
                  Container(
                    height: 56,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white
                    ),
        
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage('assets/pictures/Hurera.jpeg'),
                          ),
                          SizedBox(
                            width: 12,
                          ),
        
                          Text('Joss Bud', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff0A0A0A),)),
                          SizedBox(
                            width: 6,
                          ),
                          Text('\$ 10,233', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 12, color: Color(0xff6763EE),)),
        
                          Spacer(
                            flex: 1,
                          ),
                          Text('12:32PM', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff0A0A0A),)),
                        ],
                      ),
                    ),
                  ),



                  const SizedBox(
                    height: 50,
                  ),


                ],
              )
        




        
            ],
          ),
        ),
      ),

      );

  }
}
