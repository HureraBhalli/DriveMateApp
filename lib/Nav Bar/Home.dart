import 'package:flutter/material.dart';



class Home extends StatelessWidget {

  static const String id = 'Home';

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Text('Welcome to ', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 18),),
              Text('DriveMate', style: TextStyle(fontFamily: 'Poppins Semibold', fontSize: 18, color: Color(0xff6763EE)), ),
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
              child: const CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage('https://media.licdn.com/dms/image/D4D03AQHUul13YecS8w/profile-displayphoto-shrink_800_800/0/1704749589763?e=2147483647&v=beta&t=JYsMHXPwIage3jg9C-u20tc9RUsxwmgJez4ZnDPkFkw'),
              ),
            ),
          ),
        ],
      ),

      body: Column(
        
        children: [

          Text('Hurera'),







        ],
      ),






    );
  }
}
