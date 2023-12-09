import 'package:dart_axifproject2/Ground_screen.dart';
import 'package:flutter/material.dart';

class Formation extends StatefulWidget {
  const Formation({super.key});

  @override
  State<Formation> createState() => _FormationState();
}

class _FormationState extends State<Formation> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:  Scaffold(
       backgroundColor: Colors.white,
          body: Column(
            children: [
             const Padding(
                padding: EdgeInsets.only(top: 20,right: 225),
                  child: Text('Formation',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color (0xff1E293B)),)),
        const Padding(
          padding: EdgeInsets.only(left: 0,right: 72),
            child: Text('Please choose your formation',style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Color (0xff475569)),)),

               const SizedBox(
                  height: 50,
                ),
              Padding(
                padding:const EdgeInsets.only(top: 30,left: 20),
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>const Ground()));
                      },
                        child: const Image(image: AssetImage('images/Formation.png'))),
                   const SizedBox(
                      width: 15,
                    ),
                    const Image(image: AssetImage('images/Formation-2.png')),
                   const SizedBox(
                      width: 15,
                    ),
                   const Image(image: AssetImage('images/Formation-2.png')),
                  ],
                ),
              ),
             const Padding(
                padding: EdgeInsets.only(top: 30,left: 20),
                child: Row(
                  children: [
                    Image(image: AssetImage('images/Formation-2.png')),
                    SizedBox(
                      width: 15,
                    ),
                    Image(image: AssetImage('images/Formation-2.png')),
                    SizedBox(
                      width: 15,
                    ),
                    Image(image: AssetImage('images/Formation-2.png')),
                  ],
                ),
              ),
             const Padding(
                padding: EdgeInsets.only(top: 30,left: 20),
                child: Row(
                  children: [
                    Image(image: AssetImage('images/Formation-2.png')),
                    SizedBox(
                      width: 15,
                    ),
                    Image(image: AssetImage('images/Formation-2.png')),
                    SizedBox(
                      width: 15,
                    ),
                    Image(image: AssetImage('images/Formation-2.png')),
                  ],
                ),
              ),
             const Padding(
                padding: EdgeInsets.only(top: 30,left: 20),
                child: Row(
                  children: [
                    Image(image: AssetImage('images/Formation-2.png')),
                    SizedBox(
                      width: 15,
                    ),
                    Image(image: AssetImage('images/Formation-2.png')),
                    SizedBox(
                      width: 15,
                    ),
                    Image(image: AssetImage('images/Formation-2.png')),
                  ],
                ),
              ),
            ],

          ),

      ),
    );
  }
}
