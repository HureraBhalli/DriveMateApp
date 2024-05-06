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




      body: SingleChildScrollView(
        child: Column(
          children: [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 22.0),
             child: Column(
               children: [
                 const SizedBox(
                   height: 30,
                   width: double.infinity,
                 ),
        
        
                 Container(
                   height: 160,
                   decoration: const BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.all(Radius.circular(14)),
                   ),
                   child: ClipRRect(
                     borderRadius: BorderRadius.all(Radius.circular(14)),
                     child: Image.asset(
                       'assets/pictures/Car.png', fit: BoxFit.cover,),
                   ),
                 ),
        
                 const SizedBox(
                   height: 10,
                 ),
                 const Row(
                   children: [
                     Text('Car wash', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 14, color: Color(0xff000000)),),
                   ],
                 ),
        
        
                 const SizedBox(
                   height: 3,
                 ),
        
        
                 const Row(
                   children: [
                     Text('Reward price:', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff000000)),),
                     Spacer(flex: 1,),
                     Text('\$34', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xff6763EE)),),
                   ],
                 ),
        
        
                 const SizedBox(
                   height: 2,
                 ),
        
        
                 const Row(
                   children: [
                     Text('Date:', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff000000)),),
                     Spacer(flex: 1,),
                     Text('12 Jan, 2024', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xff6763EE)),),
                   ],
                 ),
        
        
        
                 const SizedBox(
                   height: 2,
                 ),
        
        
                 const Row(
                   children: [
                     Text('Expiry Date:', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff000000)),),
                     Spacer(flex: 1,),
                     Text('13 Mar, 2024', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xff6763EE)),),
                   ],
                 ),
        
        
                 const SizedBox(
                   height: 10,
                 ),
        
        
        
             Align(
               alignment: Alignment.topRight,
               child: GestureDetector(
                 onTap: (){
                   showDialog(context: context, builder: (context){
                     return Padding(
                       padding: const EdgeInsets.all(18.0),
                       child: AlertDialog(
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20),
                         ),

                         title: const Align(
                           alignment: Alignment.center,
                             child: Text('Scan QR Code', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xff000000)),)),
                         content: SvgPicture.asset('assets/icons/QRCode.svg'),
                       ),
                     );
                   });
                 },
                 child: Container(
                   height: 40,
                   width: 100,
                   decoration: BoxDecoration(
                     gradient: LinearGradient(
                       colors: [
                         Color(0xff6763EE).withOpacity(0.7), // Red with 67% opacity
                         Color(0xff6763EE).withOpacity(1), // Blue with 67% opacity
                       ],
                       begin: Alignment.topLeft,
                       end: Alignment.bottomRight,
                     ),

                     borderRadius: BorderRadius.circular(8),
                     // color: color,
                   ),

                   child: const Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('Claim', style: TextStyle(fontFamily: 'Poppins SemiBold', fontSize: 14, color: Colors.white),),
                     ],
                   ),
                 ),
               ),
             ),
        
        
        
        
                 SizedBox(
                   height: 20,
                 ),
        
                 //Second Picture
        
        
                 Container(
                   height: 160,
                   decoration: const BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.all(Radius.circular(14)),
                   ),
                   child: ClipRRect(
                     borderRadius: BorderRadius.all(Radius.circular(14)),
                     child: Image.asset(
                       'assets/pictures/Car.png', fit: BoxFit.cover,),
                   ),
                 ),
        
                 const SizedBox(
                   height: 10,
                 ),
                 const Row(
                   children: [
                     Text('Car wash', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 14, color: Color(0xff000000)),),
                   ],
                 ),
        
        
                 const SizedBox(
                   height: 3,
                 ),
        
        
                 const Row(
                   children: [
                     Text('Reward price:', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff000000)),),
                     Spacer(flex: 1,),
                     Text('\$34', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xff6763EE)),),
                   ],
                 ),
        
        
                 const SizedBox(
                   height: 2,
                 ),
        
        
                 const Row(
                   children: [
                     Text('Date:', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff000000)),),
                     Spacer(flex: 1,),
                     Text('12 Jan, 2024', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xff6763EE)),),
                   ],
                 ),
        
        
        
                 const SizedBox(
                   height: 2,
                 ),
        
        
                 const Row(
                   children: [
                     Text('Expiry Date:', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff000000)),),
                     Spacer(flex: 1,),
                     Text('13 Mar, 2024', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xff6763EE)),),
                   ],
                 ),
        
        
                 const SizedBox(
                   height: 10,
                 ),



                 Align(
                   alignment: Alignment.topRight,
                   child: GestureDetector(
                     onTap: (){
                       showDialog(context: context, builder: (context){
                         return Padding(
                           padding: const EdgeInsets.all(18.0),
                           child: AlertDialog(
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(20),
                             ),

                             title: const Align(
                                 alignment: Alignment.center,
                                 child: Text('Scan QR Code', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xff000000)),)),
                             content: SvgPicture.asset('assets/icons/QRCode.svg'),
                           ),
                         );
                       });
                     },
                     child: Container(
                       height: 40,
                       width: 100,
                       decoration: BoxDecoration(
                         gradient: LinearGradient(
                           colors: [
                             Color(0xff6763EE).withOpacity(0.7), // Red with 67% opacity
                             Color(0xff6763EE).withOpacity(1), // Blue with 67% opacity
                           ],
                           begin: Alignment.topLeft,
                           end: Alignment.bottomRight,
                         ),

                         borderRadius: BorderRadius.circular(8),
                         // color: color,
                       ),

                       child: const Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('Claim', style: TextStyle(fontFamily: 'Poppins SemiBold', fontSize: 14, color: Colors.white),),
                         ],
                       ),
                     ),
                   ),
                 ),








                 //Third Picture
        
        
        
                 const SizedBox(
                   height: 20,
                 ),
                 
        
        
                 Container(
                   height: 160,
                   decoration: const BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.all(Radius.circular(14)),
                   ),
                   child: ClipRRect(
                     borderRadius: BorderRadius.all(Radius.circular(14)),
                     child: Image.asset(
                       'assets/pictures/Car.png', fit: BoxFit.cover,),
                   ),
                 ),
        
                 const SizedBox(
                   height: 10,
                 ),
                 const Row(
                   children: [
                     Text('Car wash', style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 14, color: Color(0xff000000)),),
                   ],
                 ),
        
        
                 const SizedBox(
                   height: 3,
                 ),
        
        
                 const Row(
                   children: [
                     Text('Reward price:', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff000000)),),
                     Spacer(flex: 1,),
                     Text('\$34', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xff6763EE)),),
                   ],
                 ),
        
        
                 const SizedBox(
                   height: 2,
                 ),
        
        
                 const Row(
                   children: [
                     Text('Date:', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff000000)),),
                     Spacer(flex: 1,),
                     Text('12 Jan, 2024', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xff6763EE)),),
                   ],
                 ),
        
        
        
                 const SizedBox(
                   height: 2,
                 ),
        
        
                 const Row(
                   children: [
                     Text('Expiry Date:', style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 12, color: Color(0xff000000)),),
                     Spacer(flex: 1,),
                     Text('13 Mar, 2024', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xff6763EE)),),
                   ],
                 ),
        
        
                 const SizedBox(
                   height: 10,
                 ),



                 Align(
                   alignment: Alignment.topRight,
                   child: GestureDetector(
                     onTap: (){
                       showDialog(context: context, builder: (context){
                         return Padding(
                           padding: const EdgeInsets.all(18.0),
                           child: AlertDialog(
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(20),
                             ),

                             title: const Align(
                                 alignment: Alignment.center,
                                 child: Text('Scan QR Code', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 14, color: Color(0xff000000)),)),
                             content: SvgPicture.asset('assets/icons/QRCode.svg'),
                           ),
                         );
                       });
                     },
                     child: Container(
                       height: 40,
                       width: 100,
                       decoration: BoxDecoration(
                         gradient: LinearGradient(
                           colors: [
                             Color(0xff6763EE).withOpacity(0.7), // Red with 67% opacity
                             Color(0xff6763EE).withOpacity(1), // Blue with 67% opacity
                           ],
                           begin: Alignment.topLeft,
                           end: Alignment.bottomRight,
                         ),

                         borderRadius: BorderRadius.circular(8),
                         // color: color,
                       ),

                       child: const Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('Claim', style: TextStyle(fontFamily: 'Poppins SemiBold', fontSize: 14, color: Colors.white),),
                         ],
                       ),
                     ),
                   ),
                 ),






                 const SizedBox(
                   height: 40,
                 ),






               ],
             ),
           ),
          ],
        ),
      ),

    );

  }
}
