import 'package:first_flutter_project/list_page.dart';
import 'package:first_flutter_project/splash_page.dart';
import 'package:flutter/material.dart';

import 'intro_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: Splash_page(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    var name_text = TextEditingController();
    var email_text = TextEditingController();
    var pass_text = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("First Flutter Web",style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 40),
                child: Text(
                  "Welcome to Ansari Car Poshish",
                  style: TextStyle(
                    fontFamily: "Myfont",
                    fontSize: 40,
                    fontWeight: FontWeight.w800
                  ),
                ),
              ),
              Container(
                width: 300,
                child: TextField(
                    controller: name_text,
                    style: TextStyle(color: Colors.green),
                    // enabled: false,
                    decoration: InputDecoration(
                        labelText: "Enter Name",
                        prefixIcon: Icon(
                          Icons.mail_outline,
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                                color: Colors.blue,
                                width: 1.5,
                                style: BorderStyle.solid
                            )
                        ),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(11)),
                            borderSide: BorderSide(
                                color: Colors.deepPurpleAccent,
                                width: 1.5
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(11)),
                            borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.5
                            )
                        )
                    ),

                  ),
                ),
              SizedBox(height: 11,),
              Container(
                width: 300,
                child: TextField(
                  controller: email_text,
                  style: TextStyle(color: Colors.green),
                  // enabled: false,
                  decoration: InputDecoration(
                      labelText: "Enter Email",
                      prefixIcon: Icon(
                        Icons.mail_outline,
                        color: Colors.black,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                              color: Colors.blue,
                              width: 1.5,
                              style: BorderStyle.solid
                          )
                      ),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(11)),
                          borderSide: BorderSide(
                              color: Colors.deepPurpleAccent,
                              width: 1.5
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(11)),
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.5
                          )
                      )
                  ),

                ),
              ),
      Container(height: 11,),
      Container(
        width: 300,
        child: TextField(
          obscureText: true,
          obscuringCharacter: "*",
          controller: pass_text,
          // enabled: false,
          decoration: InputDecoration(
              labelText: "Enter Password",
              prefixIcon: Icon(Icons.key,
                color: Colors.black,
              ),
              suffixIcon: IconButton(
                icon: Icon(Icons.remove_red_eye,color: Colors.black,),
                onPressed: (){

                },
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 1.5,
                  )
              ),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(11)),
                  borderSide: BorderSide(
                      color: Colors.deepPurpleAccent,
                      width: 1.5
                  )
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(11)),
                  borderSide: BorderSide(
                      color: Colors.black,
                      width: 1.5
                  )
              )
          ),
        ),
      ),
        Container(
          margin: EdgeInsets.only(top: 30, bottom: 20),
          child: Text("Click here to move next page",
                  style: TextStyle(
                    fontWeight: FontWeight.w800
                ),),
        ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Intro_page(name_text.text.toString());
                      }));
                  }, child: Text("Move",
              style: TextStyle(
                color: Colors.white
              ),))
            ],
          ),
        )
    );

  }
}
