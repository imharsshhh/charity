import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';


class ProgressPage extends StatelessWidget {
  const ProgressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:HexColor("#FFF4F4"),
      body: Column(
        children: [
           Container(
            margin: EdgeInsets.only(top: 10,),
            child: Row(
              children: [
                 SizedBox(
                  width: 10,
                ),
                Image.asset(
                  "images/hi.png",

                  height: 70,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Parents",
            style: TextStyle(color:Color.fromARGB(255, 13, 38, 59),
            fontSize: 30,
            fontWeight: FontWeight.w300
            ),
            ),
              ],
            )
           ),
           SizedBox(
            height: 10,
           ),
           Container(
            height: 150,
            width: 450,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color.fromARGB(255, 129, 218, 224)
            ),
           ),
           Container(
            margin: EdgeInsets.only(top: 10,right: 400),
            child: Text("Badges",
            style: TextStyle(color:Color.fromARGB(255, 13, 38, 59),
            fontSize: 17,
            fontWeight: FontWeight.bold
            ),
            ),
           ),
           SizedBox(
            height: 10,
           ),
          Container(
          
            height:180,
            child: Badges(),
          ),
           Container(
            height: 300,
            width: 450,
            margin: EdgeInsets.only(top: 10),
            color: Colors.blueAccent,
          )       
        ],
      ),
    );
  }
}

class Badges extends StatefulWidget {
  const Badges({Key? key}) : super(key: key);

  @override
  State<Badges> createState() => _BadgesState();
}

class _BadgesState extends State<Badges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:HexColor("#FFF4F4"),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 180,
            width: 100,
            child: Column(
              children: [
                Container(
                 height: 60,
                width: 60,
                  margin: EdgeInsets.only(left: 20,right: 20),
                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 244, 184, 181)
                  ),
                  child: Image.asset("images/math.png"),
                ),
                Text("Maths"),
              ],
            ),
          ),           
           Container(
            height: 180,
            width: 100,
            child: Column(
              children: [
                Container(
                 height: 60,
                width: 60,
                  margin: EdgeInsets.only(left: 20,right: 20),
                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 244, 184, 181)
                  ),
                  child: Image.asset("images/sc.png"),
                ),
                Text("Scince"),
              ],
            ),
          ),         
            Container(
            height: 180,
            width: 100,
            child: Column(
              children: [
                Container(
                 height: 60,
                width: 60,
                  margin: EdgeInsets.only(left: 20,right: 20),
                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 244, 184, 181)
                  ),
                  child: Image.asset("images/price.png"),
                ),
              Text("Acivment"),
              ],
            ),
          ),         
            Container(
            height: 180,
            width: 100,
            child: Column(
              children: [
                Container(
                 height: 60,
                width: 60,
                  margin: EdgeInsets.only(left: 20,right: 20),
                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 244, 184, 181)
                  ),
                  child: Image.asset("images/lern.png"),
                ),
                Text("Learing"),
              ],
            ),
          ),         
            Container(
            height: 180,
            width: 100,
            child: Column(
              children: [
                Container(
                 height: 60,
                width: 60,
                  margin: EdgeInsets.only(left: 20,right: 20),
                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 244, 184, 181)
                  ),
                  child: Image.asset("images/book.png"),
                ),
                Text("Reading"),
              ],
            ),
          ),  
           Container(
            height: 180,
            width: 100,
            child: Column(
              children: [
                Container(
                 height: 60,
                width: 60,
                  margin: EdgeInsets.only(left: 20,right: 20),
                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 244, 184, 181)
                  ),
                  child: Image.asset("images/draw.png"),
                ),
                Text("Drawing"),
              ],
            ),
          ),         
         
       ],

      ),
    );
  }
}