
import 'package:flutter/material.dart';
import 'package:dart_axifproject2/Create_Lineup.dart';

class Team extends StatefulWidget {
  const Team({super.key});

  @override
  State<Team> createState() => _TeamState();
}

class _TeamState extends State<Team> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:const Text('Team Managment',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black)),
      ),

      body: Column(
            children: [
             const Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Text('Upcoming Matches',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 21,color: Colors.black))),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const Image(image: AssetImage('images/priemershio.png')),
                  InkWell(
                      onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const Lineup()));
                      },
                    child:const Image(image: AssetImage('images/Frame 243.png')),
                  )
    ]
    ),
            const Padding(
               padding: EdgeInsets.only(top: 30,left: 20),
               child: Row(
                 children: [
                   Image(image: AssetImage('images/Frame 283.png')),
                 ],
               ),
             ),

                ],
              ) ,
    );


  }
}
