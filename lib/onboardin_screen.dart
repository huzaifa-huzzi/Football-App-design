import 'dart:async';

import 'package:flutter/material.dart';
import 'package:dart_axifproject2/Login_sccreen.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:const Color(0xff1D274A),

      body: Column(
        children: [
          const Image(image: AssetImage('images/illustration.png')),
         const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
              child: Text('Join Game',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white),)),
         const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('New Winning era FC manager Hanno is reportedly interested in making Senna FC midfielder Samuel Marae his first signing in the June transfer window.',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.white)),),
          const SizedBox(
            height: 40,
          ),
          Container(
             width: 300,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:const Color(0xffFF5258),
            ),
            child: Center(

           child:InkWell(
             onTap: (){
               Timer(const Duration(seconds: 4), () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) =>const LoginScreen() ));
               });
             },
             child:const Text('Get Started',style: TextStyle(fontWeight: FontWeight.bold
                      ,fontSize: 20,color: Colors.white)),
           ),
              ),
              ),
         ]
    ),
    );

  }
}
