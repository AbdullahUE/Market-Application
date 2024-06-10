import 'dart:async';

import 'package:first_flutter_project/main.dart';
import 'package:flutter/material.dart';

class Splash_page extends StatefulWidget{
  @override
  State<Splash_page> createState() => _Splash_pageState();
}

class _Splash_pageState extends State<Splash_page> {

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2,), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return MyHomePage(title: "");
      }));
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       color: Colors.black,
       child: Center(child: Image.asset("assets/images/ACP logo.jpg")),
     ),
   );
  }
}