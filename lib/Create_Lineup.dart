import 'package:dart_axifproject2/formation_screen.dart';
import 'package:flutter/material.dart';

class Lineup extends StatefulWidget {
  const Lineup({super.key});

  @override
  State<Lineup> createState() => _LineupState();
}

class _LineupState extends State<Lineup> {

  int _selectedIndex = 0;

 void _navigateBar(int index){
   setState(() {
     _selectedIndex = index;
   });
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color(0xffdc2626),
        title:const Image(image:AssetImage('images/Frame 123.png') ),
        automaticallyImplyLeading: false,

      ),

      body: Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration:const BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/Mask group.png')),
                  color: Color(0xffdc2626),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight:Radius.circular(50) )),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                            child: Image(image: AssetImage('images/Frame 236.png'))),
                      ],
                    ),
              ),
              const SizedBox(
                height: 15,
              ),
                  Row(
                  children: [
                     InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Formation()));
                        },
                       child:const Padding(
                         padding: EdgeInsets.only(left: 40),
                               child: Image(image: AssetImage('images/Frame 245.png'))),
                     ),
                    const Padding(padding: EdgeInsets.only(right: 10)),
                   const  Image(image: AssetImage('images/Frame 246.png')),
                  ],
                ),
              const SizedBox(
                height: 10,
              ),
             const Column(
                children: [
                  Image(image: AssetImage('images/image 190.png')),
                ],
              ),

            ],
      ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor:const Color(0xff1D274A),
          currentIndex: _selectedIndex,
          onTap: _navigateBar,
          items:const [
            BottomNavigationBarItem(
                icon:Icon(Icons.home) , label: 'Home',
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.calendar_month) , label: 'Line',
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.control_point) , label: 'Line-2',
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.account_box) , label: 'Profile',
            ),
          ],
        ),
    );
  }
}
