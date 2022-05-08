//import MaterialApp widget 
import 'package:flutter/material.dart';

//Flutter class
void main() {
  runApp(const MyApp());
}

//Layout class
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MaterialApp widget
    return MaterialApp(
      //Scaffold widget
      home: Scaffold(
        //background color hex type
        /* backgroundColor: Color(0xFF0a85ab), */

        //background color data class type
        /* backgroundColor: Colors.cyan, */

        //background color data class type + contrass
        backgroundColor: Colors.cyan[800], 

        //invisible widget center
        body: const Center(
          //text widget
          child: Text(
            "Hello World !",
          ),
        ),
      ),
    );
  }
}
