import 'dart:async';

import 'package:flutter/material.dart';
import 'package:dart_axifproject2/onboardin_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  void initState(){
    super.initState();

    Timer(const Duration(seconds: 4), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>const OnBoarding() ));
    });

  }
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      backgroundColor: Color(0xff1D274A),

      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage('images/image 163.png')),
                   Image(image: AssetImage('images/Little animation.png')),

        
            ],
        
        ),
      ),
    );
  }
}

