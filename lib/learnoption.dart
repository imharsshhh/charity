import 'package:flutter/material.dart';
 import 'package:hexcolor/hexcolor.dart';
 import 'package:lottie/lottie.dart';

class SecondList extends StatefulWidget {
  const SecondList({Key? key}) : super(key: key);

  @override
  State<SecondList> createState() => _SecondListState();
}

class _SecondListState extends State<SecondList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
             height: 200,
              width: 180,
               decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
             color: Color.fromARGB(255, 252, 231, 246)    
            ),
          child: Image.asset("images/abc.png"),
              margin: EdgeInsets.only(top: 20,left: 10,right: 20),
            ),
             Container(
              height: 200,
              width: 180,
               decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
             color: Color.fromARGB(255, 252, 231, 246)
          ),
          child: Image.asset("images/123.png"),
              margin: EdgeInsets.only(top: 20,left: 10,right: 20),
                       ),
          ],
        ),
         Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 180,
               decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
             color: Color.fromARGB(255, 252, 231, 246)
          ),
           child: Image.asset("images/shap.png"),
              margin: EdgeInsets.only(top: 20,left: 10,right: 20),
             
            ),
             Container(
             height: 200,
              width: 180,
               decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
         color: Color.fromARGB(255, 252, 231, 246)
          ),
          child: Image.asset("images/a.png"),
              margin: EdgeInsets.only(top: 20,left: 10,right: 20),
              
            ),
          ],
        ),
         Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 180,
               decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
             color: Color.fromARGB(255, 252, 231, 246)
          ),
           child: Image.asset("images/bb.png"),
              margin: EdgeInsets.only(top: 20,left: 10,right: 20),
             
            ),
             Container(
             height: 200,
              width: 180,
               decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
         color: Color.fromARGB(255, 252, 231, 246)
          ),
          child: Image.asset("images/f.png"),
              margin: EdgeInsets.only(top: 20,left: 10,right: 20),
              
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 20,bottom: 25),
          height: 150,
          width: 450,
          decoration: BoxDecoration(
             color:Color.fromARGB(255, 239, 213, 172),
            borderRadius: BorderRadius.circular(30),
          ),
           child:Row(
            children: [
               Lottie.network("https://assets1.lottiefiles.com/private_files/lf30_jlnohmax.json"),
              Column(
                children: [ Container(
                  margin: EdgeInsets.only(left: 5,right:10,top: 10),
                  child: Text(
                    "Story Here ",
                    style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Color.fromARGB(255, 23, 68, 104)),
                  ),
                ),
                 Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    "See Animated Story Video ",
                    style: TextStyle(fontSize:17,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Color.fromARGB(255, 42, 73, 98)),
                  ),
                ),
                 Container(
                 
                  margin: EdgeInsets.only(top: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.punch_clock_rounded),
                      Text(
                    "20 to 15 minutes only ",
                    style: TextStyle(fontSize:15,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Color.fromARGB(255, 4, 46, 80)),
                  ),
                    ],
                  )
                ),
                   Container(
                                  margin: EdgeInsets.only(top:7),
                                  width: 130,
                              
                               height: 40,
                                child: RaisedButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        color: Colors.orangeAccent,
                        child: Text('Start',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                        onPressed: () {}
                         
                  ),
                            
                    )
                ],
              ) 

            ],
           )         
        ),
      ],  
      
    );
  }
}