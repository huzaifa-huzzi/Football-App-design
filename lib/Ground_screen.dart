import 'dart:async';

import 'package:dart_axifproject2/Players.screen.dart';
import 'package:flutter/material.dart';

class Ground extends StatefulWidget {
  const Ground({super.key});

  @override
  State<Ground> createState() => _GroundState();
}

class _GroundState extends State<Ground> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Ground',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color (0xff1E293B))),
        centerTitle:true,
      ),
      body: Column(
        children: [
         const InkWell(
            child: Padding(
               padding: EdgeInsets.only(top: 45,left: 25),
                child: Image(image:AssetImage('images/Group 3127.png'))),
          ),
          const SizedBox(
             height: 30,
          ),
          InkWell(
            onTap: (){
              Timer(const Duration(seconds: 4), () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>const Players() ));
              });
            },
            child: Padding(
              padding:const EdgeInsets.only(left: 45),
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:const Color(0xffFF5258),
                ),
                child:const Center(
                  child: Text('Players',style: TextStyle(fontWeight: FontWeight.bold
                      ,fontSize: 20,color: Colors.white)),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
