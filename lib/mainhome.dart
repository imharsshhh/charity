import 'dart:convert';

import 'package:charity/bmi.dart';
import 'package:charity/learnoption.dart';
import 'package:charity/profile.dart';
import 'package:flutter/material.dart';
 import 'package:hexcolor/hexcolor.dart';
 import 'package:lottie/lottie.dart';


 class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
     return   Scaffold(
      backgroundColor: HexColor("#FFF4F4"),
      body:SingleChildScrollView(
     child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Container(
            margin: EdgeInsets.only(top: 10,),
            child: Row(
              children: [
                 SizedBox(
                  width: 10,
                ),
                 Image.asset(
                  "images/hl.png",

                  height:30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Hello Little",
            style: TextStyle(color:Color.fromARGB(255, 13, 38, 59),
            fontSize: 20,
            fontWeight: FontWeight.w300
            ),
            ),
            
              ],
            )
           ),
                        const SizedBox(height: 8,),
                     
              ],
              ),
            Container(
              margin: const EdgeInsets.only(right: 20,top: 10),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: const Icon(
                      Icons.person,color: Colors.white,
                    ),
                )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
         
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 179, 209, 234),
                    borderRadius: BorderRadius.circular(20)
                ),
                width: 450,
                 margin: const EdgeInsets.only(left: 25,right: 15),

                child:Container(
                   margin: const EdgeInsets.only(left:0),
                      height: 100,
                      width: 150,
                     child: Row(
                       children: [
                         Lottie.network("https://assets7.lottiefiles.com/packages/lf20_hzfmxrr7.json"),
                         Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 10,top:40),
                              child: Text("Online Prents Meeting.",
                              style: TextStyle(
                                color: Colors.brown[700],
                                fontSize: 20,
                                fontWeight: FontWeight.bold),)),
                                 Container(
                              margin: const EdgeInsets.only(left: 10,top:5),
                              child: Text(" to discuss your child's progress ",
                              style: TextStyle(
                                color: Colors.brown[500],
                                fontSize: 13,
                                fontWeight: FontWeight.bold),)),
                                Container(
                                  margin: const EdgeInsets.only(top:5),
                                  width: 130,
                               height: 60,
                               padding: const EdgeInsets.all(12),
                              
                    child: RaisedButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        color: Colors.orangeAccent,
                        child: Text('Join',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                        onPressed: () {}
                          ),),
                          ],
                         )
                       ],
                     ),
                    ),
                    
              ),
              Container(
                width: 450,
                  
                    decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 230, 171, 171),
                    borderRadius: BorderRadius.circular(20)
                ),
               
                 margin: const EdgeInsets.only(left: 25,right: 15),

                child:Container(
                   margin: const EdgeInsets.only(left:0),
                      height: 100,
                      width: 150,
                     child: Row(
                       children: [
                         Lottie.network("https://assets4.lottiefiles.com/packages/lf20_nz20vA.json"),
                         Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 10,top:20),
                              child: const Text("BiNgO Fruit Quize ! Level 1 .",
                              style: const TextStyle(
                                color: Color.fromARGB(255, 208, 77, 110),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),)),
                                
                                 Container(
                              margin: const EdgeInsets.only(left: 5,top:5),
                              child: const Text("Easy Fruit Fill-Blanks Quize ",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 227, 77, 122),
                                fontSize: 13,
                                fontWeight: FontWeight.bold),)),
                                 Container(
                              margin: const EdgeInsets.only(left: 5,top:5),
                              child: const Text("At 9Am to 11Am",
                              style: const TextStyle(
                                color: Color.fromARGB(255, 239, 15, 83),
                                fontSize: 13,
                                fontWeight: FontWeight.bold),)),
                                Container(
                                  margin: const EdgeInsets.only(top:7),
                                  width: 130,
                               height: 60,
                               padding: const EdgeInsets.all(12),
                              
                            child: RaisedButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        color: Colors.orangeAccent,
                        child: Text('Start',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                        onPressed: () {}
                         
                  ),
                          ),
                          ],
                         )
                       ],
                     ),
                    ),
              ),
               Container(
                width: 400, 
                     decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 219, 203, 241),
                    borderRadius: BorderRadius.circular(20)
                ),
               
                 margin: const EdgeInsets.only(left: 25,right: 15),

                child:Container(
                   margin: const EdgeInsets.only(left:0),
                      height: 100,
                      width: 150,
                     child: Row(
                       children: [
                         Lottie.network("https://assets7.lottiefiles.com/packages/lf20_x1gjdldd.json"),
                         Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 10,top:20),
                              child: const Text("Cheak Helth Report",
                              style: TextStyle(
                                color: Color.fromARGB(255, 197, 77, 208),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),)),
                                
                                 Container(
                              margin: const EdgeInsets.only(left: 5,top:5),
                              child: const Text("Get Nutrition Full Diet  ",
                              style: const TextStyle(
                                color: Color.fromARGB(255, 197, 77, 227),
                                fontSize: 13,
                                fontWeight: FontWeight.bold),)),
                                 Container(
                              margin: const EdgeInsets.only(left: 5,top:5),
                              child: const Text("For your Kid",
                              style: const TextStyle(
                                color: Color.fromARGB(255, 206, 122, 225),
                                fontSize: 13,
                                fontWeight: FontWeight.bold),)),
                                Container(
                                  margin: const EdgeInsets.only(top:7),
                                  width: 130,
                               height: 60,
                               padding: const EdgeInsets.all(12),
                             child: RaisedButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        color: Colors.orangeAccent,
                        child: Text('Check',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                        onPressed: () {}
                         
                  ),
                          ),
                          ],
                         )
                       ],
                     ),
                )
              ),
            ],
        ),
        ),
        const SizedBox(
          height: 15,
        ),
 Container(
            margin: EdgeInsets.only(top: 10,left: 20),
            child: Row(
              children: [
                 SizedBox(
                  width: 10,
                ),
                // Image.asset(
                //   "images/hi.png",

                //   height: 70,
                // ),
                // SizedBox(
                //   width: 10,
                // ),
                Text("Learn With Fun",
            style: TextStyle(color:Color.fromARGB(255, 13, 38, 59),
            fontSize: 20,
            fontWeight: FontWeight.bold
            ),
            ),
            
              ],
            )
           )   ,     
       const SecondList(),
      ],)
      ),
                                                                                                        

      
       
    );
  }
}