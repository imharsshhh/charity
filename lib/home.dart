// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:charity/bmi.dart';
import 'package:charity/learnoption.dart';
import 'package:charity/mainhome.dart';
import 'package:charity/profile.dart';
import 'package:charity/prog.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _SelectedIndex = 0;

  final List<Widget> _children = [
    MainHome(),
    ProgressPage(),
    BMI(),
    ProfilePage()
  ];

  void _onIteamTapped(int index) {
    setState(() {
      _SelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_SelectedIndex],
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 10),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                backgroundColor: Color.fromARGB(255, 251, 217, 230),
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: SizedBox(
                        child: Image.asset(
                          "images/home.png",
                        ),
                        height: 27,
                        width: 26,
                      ),
                      label: "Home"),
                  BottomNavigationBarItem(
                    icon: SizedBox(
                      child: Image.asset(
                        "images/prog.png",
                      ),
                      height: 27,
                      width: 26,
                    ),
                    label: "Progress",
                  ),
                  BottomNavigationBarItem(
                    icon: SizedBox(
                      child: Image.asset(
                        "images/bmi.png",
                      ),
                      height: 27,
                      width: 26,
                    ),
                    label: "BMI",
                  ),
                  BottomNavigationBarItem(
                    icon: SizedBox(
                      child: Image.asset(
                        "images/gear.png",
                      ),
                      height: 27,
                      width: 26,
                    ),
                    label: "Setting",
                  ),
                ],
                currentIndex: _SelectedIndex,
                onTap: _onIteamTapped,
                selectedItemColor: Color.fromARGB(255, 230, 155, 155),
                unselectedItemColor: Color.fromARGB(255, 226, 114, 152),
              ),
            ))

        //  bottomNavigationBar: ClipRect(

        //   borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), ),

        //    child: BottomNavigationBar(
        //     backgroundColor: Color.fromARGB(255, 243, 200, 215),
        //     items:<BottomNavigationBarItem> [
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.home),
        //         label: "Home"
        //         ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.design_services,),
        //         label: "services"
        //         ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.person),
        //         label: "Profile"
        //         ),
        //     ],
        //     currentIndex: _SelectedIndex,
        //      onTap: _onIteamTapped,
        //     selectedItemColor: Color.fromARGB(255, 230, 155, 155),
        //      unselectedItemColor: Color.fromARGB(255, 226, 114, 152),
        //     type: BottomNavigationBarType.fixed,
        //     ),

        );
  }
}
