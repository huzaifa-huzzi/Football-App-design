import 'package:dart_axifproject2/Position_screen.dart';
import 'package:dart_axifproject2/substitute_screen.dart';
import 'package:flutter/material.dart';

class Players2 extends StatefulWidget {
  const Players2({super.key});

  @override
  State<Players2> createState() => _Players2State();
}

class _Players2State extends State<Players2> {
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
                      child: Text('Players', style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.white)),
                    ),
                  ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Substitute()));
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
                      child: Text('Substitute', style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color(0xffFF5258))),
                    ),
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
              Image(image: AssetImage('images/messi.png')),
            ],
          ),
        ],
      ),
    );

  }
}
