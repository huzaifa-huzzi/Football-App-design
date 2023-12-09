import 'dart:async';

import 'package:dart_axifproject2/Position_screen.dart';
import 'package:flutter/material.dart';

class Players extends StatefulWidget {
  const Players({super.key});

  @override
  State<Players> createState() => _PlayersState();
}

class _PlayersState extends State<Players> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
      
        body: Column(
          children: [
        const  Padding(
            padding: EdgeInsets.only(top: 5,right: 250),
              child: Text('Players',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color (0xff1E293B)))),
          const  Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20,left: 20),
                    child: Image(image: AssetImage('images/salah players.png'))),
                Padding(
                    padding: EdgeInsets.only(top: 20,left: 20),
                    child: Image(image: AssetImage('images/salah players.png'))),
                Padding(
                    padding: EdgeInsets.only(top: 20,left: 20),
                    child: Image(image: AssetImage('images/salah players.png'))),
              ],
            ),
           const Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 20,left: 20),
                    child: Image(image: AssetImage('images/salah players.png'))),
                Padding(
                    padding: EdgeInsets.only(top: 20,left: 20),
                    child: Image(image: AssetImage('images/salah players.png'))),
                Padding(
                    padding: EdgeInsets.only(top: 20,left: 20),
                    child: Image(image: AssetImage('images/salah players.png'))),
              ],
            ),
          const  Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 20,left: 20),
                    child: Image(image: AssetImage('images/salah players.png'))),
                Padding(
                    padding: EdgeInsets.only(top: 20,left: 20),
                    child: Image(image: AssetImage('images/salah players.png'))),
                Padding(
                    padding: EdgeInsets.only(top: 20,left: 20),
                    child: Image(image: AssetImage('images/salah players.png'))),
              ],
            ),

            Column(
              children: [
               const Padding(
                  padding: EdgeInsets.only(top: 10,right: 250),
                    child: Text('Substitute',style: TextStyle(fontSize: 25,fontWeight: FontWeight.normal,color: Color (0xff1E293B)))),
              const  Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 5,left: 10),
                        child: Image(image: AssetImage('images/substitue pic.png'))),
                    Padding(
                      padding: EdgeInsets.only(top: 5,left: 20),
                        child: Image(image: AssetImage('images/substitue pic-2.png'))),
                    Padding(
                        padding: EdgeInsets.only(top: 5,left: 14),
                        child: Image(image: AssetImage('images/substitue pic.png'))),
                    Padding(
                        padding: EdgeInsets.only(top: 5,left: 20),
                        child: Image(image: AssetImage('images/substitue pic-2.png'))),
                    Padding(
                        padding: EdgeInsets.only(top: 5,left: 14),
                        child: Image(image: AssetImage('images/substitue pic.png'))),

                  ],
                ),
               const Padding(
                    padding: EdgeInsets.only(top: 10,right: 285),
                    child: Text('Coach',style: TextStyle(fontSize: 25,fontWeight: FontWeight.normal,color: Color (0xff1E293B)))),
               const Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 5,left: 10),
                        child: Image(image: AssetImage('images/substitue pic.png'))),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: (){
                    Timer(const Duration(seconds: 4), () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>const Position() ));
                    });
                  },
                  child: Padding(
                    padding:const EdgeInsets.only(left: 20),
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:const Color(0xffFF5258),
                      ),
                      child:const Center(
                        child: Text('Announce',style: TextStyle(fontWeight: FontWeight.bold
                            ,fontSize: 20,color: Colors.white)),
                      ),
                    ),
                  ),
                ),


              ],

            ),
          ],
        ),
      
      ),
    );
  }
}
