import 'package:drive_mate/Nav%20Bar/Wallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';


class Reward extends StatelessWidget {
  static const String id = 'Reward';

  const Reward ({super.key});

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
              const Text('Your Rewards!', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 18, color: Colors.white),),
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




      body: Column(
        children: [
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 22.0),
           child: Column(
             children: [
               const SizedBox(
                 height: 30,
                 width: double.infinity,
               ),
            // Image.asset('https://www.ymfcarparts.co.uk/images/blog/0-full-car-service.jpg'),
               Container(
                 height: 160,
                 decoration: const BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.all(Radius.circular(14)),
                 ),
              //   child: Image.asset('assets/pictures/Car.png'),
               )
             ],
           ),
         ),
        ],
      ),

    );

  }
}
