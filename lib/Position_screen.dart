import 'package:dart_axifproject2/Players-2_screen.dart';
import 'package:dart_axifproject2/substitute_screen.dart';
import 'package:flutter/material.dart';

class Position extends StatefulWidget {
  const Position({super.key});

  @override
  State<Position> createState() => _PositionState();
}

class _PositionState extends State<Position> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Lineup', style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body:
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15, left: 20),
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color(0xffFF5258),
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Center(
                        child: Text('Position', style: TextStyle(fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Players2()));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 15, left: 20),
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color(0xffFDF2F8),
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Center(
                          child: Text('Players', style: TextStyle(fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Color(0xffFF5258))),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Substitute()));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 15, left: 20),
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color(0xffFDF2F8),
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
                height: 40,
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 350,
                    decoration:const BoxDecoration(
                      color: Color(0xff1D274A),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                    ),
                    child:const Center(
                      child: Text('Formation 4-4-2',style: TextStyle(fontWeight: FontWeight.normal,color: Colors.white,fontSize: 20),),
                    ),
                  ),
                ],
              ),
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                      child: Image(image: AssetImage('images/ground with players.png'))),
                ],
              ),
            ],
          ),

      );
  }
}
