import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class MySingUp extends StatefulWidget {
  const MySingUp({Key? key}) : super(key: key);

  @override
  State<MySingUp> createState() => _MySingUpState();
}

class _MySingUpState extends State<MySingUp> {
 TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:HexColor("#FFF4F4"),
        child: Stack(
          
          children: [
             Positioned(
                 top: 0 ,
                  child: Image.asset("images/c1.png")),
            
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
                      hintText: "Creat User Name",
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
                      // labelText: 'Password',
                      // fillColor: Colors.orangeAccent,
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
                      // labelText: 'Password',
                      // fillColor: Colors.orangeAccent,
                      hintText: "Comform Password"
                    ),
                  ),
                ),
                
                Container(
                  margin: EdgeInsets.only(top: 10,left: 250),
                  child: TextButton(
    
                    onPressed: () {
                      //forgot password screen
                    },
                    child:  Text('Add more Details',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10,left: 100,right: 100),
                    height: 50,
    
                    padding:  EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: Colors.orangeAccent,
                      child: Text('SingUp',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )
                ),
               
                 
              ],
                
    
            ), 
           Positioned(
                bottom: 5,
    
                  child: Image.asset("images/images__1_-removebg-preview.png"),
                 ),
                
             ],
            
    ),
      ),
    );
  }
}



