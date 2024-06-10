import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Phone_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var name = ["Muhammad Bilal Ansari","Muhammad Adil Ansari","Abdullah Ansari"];
    var numbers = ["0320-9409493","0320-9493382","0326-4993458"];
   return Scaffold(
     appBar: AppBar(backgroundColor: Colors.yellow,
       title: Text("Ansari Car Poshish",
         style: TextStyle(
             color: Colors.black,
             fontWeight: FontWeight.w800
         ),
       ),
     ),
     body: ListView.separated(itemBuilder: (context,index){
       return ListTile(
         leading: CircleAvatar(),
         title: Text(name[index]),
         subtitle: Text(numbers[index]),
         trailing: Icon(
           Icons.add_call,
         ),
       );
     }, separatorBuilder: (context,index){
       return Divider(
         height: 50,
         thickness: 2,
       );
     }, itemCount: name.length),
   );
  }

}