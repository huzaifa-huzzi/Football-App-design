import 'dart:async';

import 'package:dart_axifproject2/Team_Managment.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
      
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
               padding: EdgeInsets.only(right: 140,top: 70),
                 child:  Text('Hi, Welcome back!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black))),

            const SizedBox(
              height: 50,
            ),
           const Padding(
              padding: EdgeInsets.only(right: 320),
                child:  Text('Email',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Color(0xff475569)),)),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'e.g:email@gmail.com',
                  hintStyle:const TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Color(0xff64784b)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),


                  ),

              ),
            ),




            // password;
            const SizedBox(
              height: 20,
            ),
            const Padding(
                padding: EdgeInsets.only(right: 300,left: 10),
                child:  Text('Password',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Color(0xff475569)),)),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'e.g:email@gmail.com',
                  hintStyle:const TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Color(0xff64784b)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon:const Icon(Icons.lock_outline_sharp),
                  suffixIconColor:const Color(0xff475569),

                ),

              ),
            ),


            // remember me button & forgot password
             const SizedBox(
               height: 10,
             ),
            Row(
              children: [
                 Padding(
                   padding:const EdgeInsets.symmetric(horizontal: 10),
                   child: Container(
                     height: 25,
                     width: 25,
                     decoration: BoxDecoration(
                       color:const Color(0xffFF5258),
                       borderRadius: BorderRadius.circular(3),
                     ),
                     child:const Center(child: Icon(Icons.check),),

                   ),
                 ),
                const Text('Remember me',style:TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Color(0xff334155))),
               const Padding(padding: EdgeInsets.only(right: 105)),
                const Text('Forgot Password ?',style:TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Color(0xffDC2626))),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: (){
                Timer(const Duration(seconds: 4), () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const Team() ));
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
                  child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold
                      ,fontSize: 20,color: Colors.white)),
                ),
              ),
            ),

           const Row(
             mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                    child: Text('Dont have an account? ',style:TextStyle(fontWeight: FontWeight.normal,fontSize: 19,color: Colors.black),)),
         Text('Signup! ',style:TextStyle(fontWeight: FontWeight.normal,fontSize: 22,color: Color(0xffFF5258)),),
              ],

            ),


          ],
        ),
      
      ),
    );
  }
}
