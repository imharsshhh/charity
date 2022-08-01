import 'package:charity/main.dart';
import 'package:charity/singup.dart';
import 'package:charity/Login.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:flutter/src/widgets/framework.dart';

class Forgetpass extends StatefulWidget {
  const Forgetpass({Key? key}) : super(key: key);

  @override
  State<Forgetpass> createState() => _ForgetpassState();
}

class _ForgetpassState extends State<Forgetpass> {
 TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:HexColor("#FFF4F4"),
        child: Stack(
          
          children: [
            //  Positioned(
            //      top: 0 ,
            //       child: Image.asset("images/c1.png")),
            
             Column(
              children: <Widget>[
            
    
                Container(
                  
                  margin: EdgeInsets.only(top: 80),
                  padding: const EdgeInsets.all(10),
                  
                  child: TextField(
                    controller: nameController,
                    decoration:  InputDecoration(
    
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orangeAccent, width: 3.0),
                        borderRadius:BorderRadius.circular(30),
                      ),
    
                      border: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.grey, width: 3.0)
    
                      ),
                      // labelText: 'User Name',
                      // fillColor: Colors.orangeAccent,
                      hintText: "Enter Eamil ",
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orangeAccent, width: 3.0),
                          borderRadius:BorderRadius.circular(30),
                        ),
                      border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(30),
    
                      ),
                      
                      hintText: "Creat Password"
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orangeAccent, width: 3.0),
                          borderRadius:BorderRadius.circular(30),
                        ),
                      border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(30),
    
                      ),
                      
                      hintText: "Comform Password"
                    ),
                  ),
                ),
                
               
                Container(
                  margin: EdgeInsets.only(top: 20,left: 100,right: 100),
                    height: 50,
    
                    padding:  EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: Colors.orangeAccent,
                      child: Text('Set Password',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                      onPressed: () {
                     
                     Navigator.push(context, MaterialPageRoute(builder:(context) => MyStatefulWidget()));
                      
                      },
                    )
                ),
                Container(
                  margin: EdgeInsets.only(top: 40,right: 10),
                  child: Text("Dont Have Idea How to do This !!",style: TextStyle(color: Colors.brown[600],fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                 Container(
                  margin: EdgeInsets.only(top: 10,right: 10),
                  child: Text("Do you Want Tips?",style: TextStyle(color: Colors.brown[300],fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                  Center(
                   child: Container(
                    margin: EdgeInsets.only(top: 10,left: 10),
                    child: TextButton(
    
                      onPressed: () {
                        //forgot password screen
                      },
                      child:  Text('click Here',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),),
                    ),
                ),
                 ),
               
               
                 
              ],
                
    
            ), 
           Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                  child: Image.asset("images/fg.png"),
                 ),
                
             ],
            
    ),
      ),
    );
  }
}
