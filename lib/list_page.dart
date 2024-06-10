import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class List_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    var numbering = ["1","2","3","4","5"];
    var name = ["Steering Wheel Cover","Seat Cover","Roof","Dashboard","Gear knob"];
    var price = ["5000","3500","7000","10000","3000"];

   return Scaffold(
     appBar: AppBar(backgroundColor: Colors.yellow,
       title: Text("Ansari Car Poshish",
         style: TextStyle(
           color: Colors.black,
           fontWeight: FontWeight.w800
         ),
       ),
     ),
     body:
          ListView.separated(itemBuilder: (context,index){
            return ListTile(
              textColor: Colors.black,
              leading: Text(numbering[index]),
              title: Text(name[index]),
              subtitle: Text(price[index]),
            );
          }, separatorBuilder: (context,index){
            return Divider(
              height: 70,
              thickness: 2,
              // color: Colors.black,
            );
          }, itemCount: name.length
          ),
           // Container(
           //   margin: EdgeInsets.only(left: 1100,top: 5),
           //   child: ElevatedButton.icon(
           //       style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
           //       onPressed: (){
           //     Navigator.pop(context);
           //   }, label: Text("Back",
           //      style: TextStyle(
           //        color: Colors.white
           //      ),), icon: Icon(
           //     Icons.arrow_back_outlined,
           //     color: Colors.white,
           //   ),),
           // )

   );
  }

}