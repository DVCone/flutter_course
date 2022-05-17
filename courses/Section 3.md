# **Section 3 : Flutter Basic**
## **1. Hello World**
this is example of how to make first hello world in flutter, the explanation is in **Widget Basic** section below.

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

&emsp;
## **2. Widget Basic**
Every class in flutter is a widget. to get better in flutter you must know every widget as much as possible.

**a. MaterialApp** <br/>
this is the most important widget in flutter, because MaterialApp widget is a base for make aplication layout.

to use MaterialApp widget you can import it into the file :
```dart
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MaterialApp widget
    return MaterialApp(
      /*layout code hire!*/
    );
  }
}
```
> [Practice on `test/examples/s3.dart`]

**b.Scaffold** <br/>
Scaffold widget is also important as the MaterialApp widget, but Scaffold is use for a canvas of aplication layout. without it, the layout will be black screen.
```dart
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //scaffold widget
      home: Scaffold(
        /*layout code hire!*/
      ),
    );
  }
}
```
> [Practice on `test/examples/s3.dart`]

**c. AppBar** <br/>
AppBar is like header on top of the aplication or like navbar in web layout, in flutter you can custom the AppBar whatever you need. changing background color, giving app title, even make drawer menu. there is a explanation section about drawer menu widget.

AppBar widget is using only inside of scaffold widget.
```dart
@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      //appbar widget
      appBar: AppBar(
        title: const Text(
          "Fist App",
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan[800],
      ),
      body: /*layout code hire!*/,
    ),
  );
}
```
> [Practice on `test/examples/s3.dart`]

**d. Container & SizedBox** <br/>
Container is a widget that combines common painting, positioning, and sizing widgets, like a div() box in web layout.

SizedBox is look same as container but the different it's fixed size box. The [width] and [height] parameters can be null to indicate that the size of the box should not be constrained in the corresponding dimension.
```dart
...
  //container widget
  Container(
    //container style
    height: 200,
    color: Colors.yellow[300],
    //container value
    child: const Text(
      "Hello World!",
  ),
  //SizedBox widget
  const SizedBox(
    height: 10,
  ),
...
```
> [Practice on `test/examples/s3.dart`]

**e. Text** <br/>
This is a ecential widget in every programming language, to use a text you must use the text class from flutter.
```dart
//Text widget
const Text(
  //Text value
  "Hello World!",
  //Text Style
  style: TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
  ),
),
```
> [Practice on `test/examples/s3.dart`]

**f. FlutterLogo** <br/>
this is a original widget that will give you a flutter logo image by calling it's class.
```dart
Container(
  width: 200,
  height: 200,
  color: Colors.yellow[300],
  //FlutterLogo widget
  child: const FlutterLogo(
    size: 100,
  ),
),
```
> [Practice on `test/examples/s3.dart`]

**g. Button** <br/>
there is 3 types of button in flutter.

1. ElevatedButton <br/>
In old version of flutter this type of button is called `RaisedButton`.
```dart
ElevatedButton(
  style: raisedButtonStyle,
  onPressed: () { },
  child: Text('Looks like a RaisedButton'),
)
```
> [Practice on `test/examples/s3.dart`]

2. TextButton <br/>
In old version of flutter this type of button is called `FlatButton`.
```dart
TextButton(
  style: flatButtonStyle,
  onPressed: () { },
  child: Text('Looks like a FlatButton'),
)
```
3. OutlinedButton <br/>
In old version of flutter this type of button is called `OutlineButton`.
```dart
OutlinedButton(
  style: outlineButtonStyle,
  onPressed: () { },
  child: Text('Looks like an OutlineButton'),
)
```

**h. Icon** <br/>
Flutter was included MaterialIcon assets, you can use the Icon by calling it's class.
```dart
Icon(
  //Icon type
  Icons.send,
  //icon color style
  color: Colors.red[600],
  //icon size style
  size: 10,
),
```
you can use icon in certain widget like inside elevatedButton.
```dart
ElevatedButton.icon(
  //Button Function
  onPressed: () {
    debugPrint("and this is with the icon one");
  },
  //icon widget
  icon: Icon(
    Icons.send,
    //icon color style
    color: Colors.red[600],
    //icon size style
    size: 10,
  ),
  //button layout
  label: const Text("Submit"),
),
```
> [Practice on `test/examples/s3.dart`]

**i. Image** <br/>
there is 4 ways to use image in flutter.

1. image provider <br/>
to use image with image provider you need to follow certain instructions:
  - make a image folder in flutter project
  - register your image folder in pubspec.yaml at the asset section
  - store your image inside image folder

after following the instruction you can call it by the class
```dart
//Image provider widget
const Image(
  image: AssetImage("../assets/imagePath"),
),
//alternative image provider widget
Image.asset("image path"),
```
> [Practice on `test/examples/s3.dart`]

2. Image Network <br/>
to use image by image network, make sure your app have internet connection when build and using it, because the image need internet connection to load.
```dart
const Image(
  image: NetworkImage("place a url in hire"),
),
//alternative of image network widget
Image.network("url"),
```
> [Practice on `test/examples/s3.dart`]

3. Image file widget
```dart
//Image file widget
Image(image: FileImage(file)),
//Alternative Image file widget
Image.file(file),
```

4. Image Memory Widget
```dart
//Image Memory widget
Image(image: MemoryImage(bytes)),
//alternative image memory widget
Image.memory(bytes),
```

&emsp;
## **3. Visible & Invisible Widget**
1. Visible Widget <br/>
is like 