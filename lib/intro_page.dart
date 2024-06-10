import 'package:first_flutter_project/item_page.dart';
import 'package:first_flutter_project/phone_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'list_page.dart';

class Intro_page extends StatelessWidget{
  var namefromhome;
  Intro_page(this.namefromhome);
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
     body: Center(
       child: Container(
         color: Colors.black,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("Welcome, $namefromhome",style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontStyle: FontStyle.italic,
                 color: Colors.white,
                 fontSize: 50
             ),
             ),
             Text("Choose option to move",style: TextStyle(
               fontWeight: FontWeight.bold,
               color: Colors.yellow,
               fontSize: 40
             ),
             ),
             Container(
               margin: EdgeInsets.only(bottom: 30),
             ),
             InkWell(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                   return List_page();
                 }));
               },
                 child: Text("            1-View list of items",style: TextStyle(
                   fontSize: 20,
                   // fontWeight: FontWeight.w800,
                   color: Colors.white,
                   fontStyle: FontStyle.italic
                 ),)),
             InkWell(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                   return Item_page();
                 }));
               },
               child: Text("                   2-View Pictures of work",style: TextStyle(
                   fontSize: 20,
                   color: Colors.white,
                   // fontWeight: FontWeight.w800,
                   fontStyle: FontStyle.italic
               ),),),
             InkWell(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                   return Phone_page();
                 }));
               },
               child: Text("3-Contact us",style: TextStyle(
                   fontSize: 20,
                   color: Colors.white,
                   // fontWeight: FontWeight.w800,
                   fontStyle: FontStyle.italic
               ),),
             )
           ],
         ),
       ),
     ),
   );
  }

}