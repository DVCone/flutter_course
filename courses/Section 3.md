# **Section 3 : Flutter Basic**
## **1. Hello World**
this is example of how to make first hello world in flutter, the explanation is in Widget Basic section below.

```dart
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
```

## **2. Widget Basic**
Every class in flutter is a widget. to get better in flutter you must know every widget as much as possible.

**a. MaterialApp**
this is the most important widget in flutter, because MaterialApp widget is a base for make aplication layout.

to use MaterialApp widget you can import it into the file :
```dart
import 'package:flutter/material.dart';
```

**b.Scaffold**
Scaffold widget is also important as the MaterialApp widget, but Scaffold is use for a canvas of aplication layout. without it, the layout will be black screen.


