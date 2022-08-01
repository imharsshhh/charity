import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:charity/Login.dart';
import 'package:charity/forgetpass.dart';
import 'package:charity/home.dart';
import 'package:charity/singup.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

  

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//     debugShowCheckedModeBanner: false,
//       home: AnimatedSplashScreen(
//         duration: 3000,
//       backgroundColor:HexColor("#FFF4F4"),
     
//       splash: Container(
//         height: 300,
//         width: 300,
//       child: Image.asset("images/logo.png"),
//       ),
//      nextScreen:HomePage(),
//       splashTransition: SplashTransition.fadeTransition,
//       splashIconSize: 500,
//       )
//     );
//   }
// }

