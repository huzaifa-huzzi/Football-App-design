import 'dart:async';

import 'package:dart_axifproject2/Login_sccreen.dart';
import 'package:dart_axifproject2/Players-2_screen.dart';
import 'package:dart_axifproject2/Position_screen.dart';
import 'package:flutter/material.dart';

class Substitute extends StatefulWidget {
  const Substitute({super.key});

  @override
  State<Substitute> createState() => _SubstituteState();
}

class _SubstituteState extends State<Substitute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Lineup', style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Position()));
                },
                child: Padding(
                  padding:const EdgeInsets.only(top: 15, left: 20),
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        color:const Color(0xffFDF2F8),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child:const Center(
                      child: Text('Position', style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color(0xffFF5258)),),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Players2()));
                },
                child: Padding(
                  padding:const EdgeInsets.only(top: 15, left: 20),
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        color:const Color(0xffFDF2F8),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child:const Center(
                      child: Text('Players', style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color(0xffFF5258))),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:const EdgeInsets.only(top: 15, left: 20),
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      color:const Color(0xffFF5258),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child:const Center(
                    child: Text('Substitute', style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
                  child: Image(image: AssetImage('images/messi-2.png'))),
            ],
          ),
          Padding(
            padding:const EdgeInsets.only(left: 50,top: 300),
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    Timer(const Duration(seconds: 4), () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>const LoginScreen() ));
                    });
                  },
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:const Color(0xffFF5258),
                    ),
                    child:const Center(
                      child: Text('Logout',style: TextStyle(fontWeight: FontWeight.bold
                          ,fontSize: 20,color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
