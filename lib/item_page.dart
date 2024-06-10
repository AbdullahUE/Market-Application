import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.yellow,
        title: Text("Ansari Car Poshish",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 400,
            child: Image.asset("assets/images/ACP logo.jpg"),
          ),
          Container(
            width: double.infinity,
            height: 400,
            child: Image.asset("assets/images/ACP logo.jpg"),
          ),

          // Container(child: Image.asset("assets/images/pic1.jpg"),width: double.infinity, height: 450,),
          // Container(child: Image.asset("assets/images/pic2.jpg"),width: double.infinity, height: 450,),
          // Container(child: Image.asset("assets/images/pic3.jpg"),width: double.infinity, height: 450,),
          // Container(child: Image.asset("assets/images/pic4.jpg"),width: double.infinity, height: 450,),
          // Container(child: Image.asset("assets/images/pic5.jpg"),width: double.infinity, height: 450,),
          // Container(child: Image.asset("assets/images/pic6.jpg"),width: double.infinity, height: 450,),
          // Container(child: Image.asset("assets/images/pic7.jpg"),width: double.infinity, height: 450,),
          // Container(child: Image.asset("assets/images/pic8.jpg"),width: double.infinity, height: 450,),

        ],
      ),
    );
  }

}