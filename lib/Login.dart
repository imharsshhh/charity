import 'package:charity/forgetpass.dart';
import 'package:charity/main.dart';
import 'package:charity/singup.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class MyStatefulWidget extends StatefulWidget {
   MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          color:HexColor("#FFF4F4"),
          child: Stack(
            
            children: [
              Positioned(
                   top: 0 ,
                    child: Image.asset("images/ss.png")),
               Column(
                children: <Widget>[
                Container(         
                    margin: EdgeInsets.only(top: 80),
                    padding: const EdgeInsets.all(10),
                    
                    child: TextFormField(
                     
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Enter a Valid Name';
                        }
                        return null;
                      }
                      ,
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
                        hintText: "Enter User Name",
                        
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextFormField(
                      
                       validator: (value){
                        if(value == null || value.isEmpty || value.length <6|| value.length > 6){
                          return 'Enter a Valid Password';
                        }else 
                        return null;
                      },
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
                        hintText: "Enter Password"
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10,left: 250),
                    child: TextButton(
          
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) =>Forgetpass()));
                      },
                      child:  Text('Forgot Password?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
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
                        child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                        onPressed: () {
                         if (_formKey.currentState!.validate()){
                           ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                         }
                        },
          
                      )
                  ),
                  Row(  
                    children: <Widget>[
                       Text('Does not have account?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                      TextButton(
                        child:  Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 20,color: Colors.green[500],fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder:(context) => MySingUp()));
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                   Container(
                    height: 250,
                    margin: EdgeInsets.only(right: 20,left: 50),
                    child: Image.asset("images/dino.png"),
                   )
                ],
                  
          
              ),  ],
          ),
        ),
      ),
    );
  }
}