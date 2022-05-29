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

        //background color data class type + contrast
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

**a. MaterialApp** 
<br/> this is the most important widget in flutter, because MaterialApp widget is a base for make application layout.

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

**b.Scaffold** 
<br/> Scaffold widget is also important as the MaterialApp widget, but Scaffold is use for a canvas of application layout. without it, the layout will be black screen.

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

**c. AppBar**
<br/> AppBar is like header on top of the application or like navbar in web layout, in flutter you can custom the AppBar whatever you need. changing background color, giving app title, even make drawer menu. there is a explanation section about drawer menu widget.

AppBar widget is using only inside of scaffold widget.
```dart
@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      //AppBar widget
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

**d. Container & SizedBox** 
<br/> Container is a widget that combines common painting, positioning, and sizing widgets, like a div() box in web layout.

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

**e. Text** 
<br/> This is a essential widget in every programming language, to use a text you must use the text class from flutter.

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

**f. FlutterLogo** 
<br/> this is a original widget that will give you a flutter logo image by calling it's class.

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

**g. Button** 
<br/> there is 3 types of button in flutter.

1. ElevatedButton 
<br/> In old version of flutter this type of button is called `RaisedButton`.

```dart
ElevatedButton(
  style: raisedButtonStyle,
  onPressed: () { },
  child: Text('Looks like a RaisedButton'),
)
```
> [Practice on `test/examples/s3.dart`]

2. TextButton 
<br/> In old version of flutter this type of button is called `FlatButton`.

```dart
TextButton(
  style: flatButtonStyle,
  onPressed: () { },
  child: Text('Looks like a FlatButton'),
)
```
3. OutlinedButton 
<br/> In old version of flutter this type of button is called `OutlineButton`.

```dart
OutlinedButton(
  style: outlineButtonStyle,
  onPressed: () { },
  child: Text('Looks like an OutlineButton'),
)
```

**h. Icon** 
<br/> Flutter was included MaterialIcon assets, you can use the Icon by calling it's class.

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

**i. Image** 
<br/> there is 4 ways to use image in flutter.

1. image provider 
<br/> to use image with image provider you need to follow certain instructions:
  - make a image folder in flutter project
  - register your image folder in pubspec.yaml at the asset section
  - store your image inside image folder

after following the instruction you can call it by the class :
```dart
//Image provider widget
const Image(
  image: AssetImage("../assets/imagePath"),
),
//alternative image provider widget
Image.asset("image path"),
```
> [Practice on `test/examples/s3.dart`]

2. Image Network 
<br/> to use image by image network, make sure your app have internet connection when build and using it, because the image need internet connection to load.

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
**a. Visible Widget** 
<br/> Visible widget is the widget that can be visible by eye and give the direct effect in application layout. <br> example of visible widget is like most widget what we learn before, from `Container()`, `Text()`, `Image()`, `Icon()`, ect.

**b. Invisible Widget**
<br/> In other hand, invisible widget is the widget that not visible by eye, so the widget can't give direct effect to the application layout, this widget need the visible widget to know about it's function. 
 This is example of the invisible widget from builder widget: `MaterialApp()`, `Scaffold()`, ect.
<br><br> but There is invisible widget other than that like some widget below :

1. `Center()`
<br> this is a invisible widget to make object like other widget inside it to be center in alignment.

```dart
const Center(
  child: Text(
    'This text is inside invisible center widget',
  ),
),
```

2. `Column()`
<br> this is a invisible widget to arrange group of object inside of it vertically.

```dart
Column(
  children: [
    const Container(
      height: 250
      width: 250
      color: Colors.pink
      child: Text(
        'this 1st text will arrange vertically',
      ),
    ),
    const Container(
      height: 250
      width: 250
      color: Colors.cyan
      child: Text(
        'this 2nd text will arrange vertically',
      ),
    ),
    const Container(
      height: 250
      width: 250
      color: Colors.yellow
      child: Text(
        'this 3rd text will arrange vertically',
      ),
    ),
  ],
),
```

3. `Row()`
<br> this is a invisible widget to arrange group of object inside of it horizontally.

```dart
Row(
  children: [
    const Container(
      height: 250
      width: 250
      color: Colors.pink
      child: Text(
        'this 1st text will arrange horizontally',
      ),
    ),
    const Container(
      height: 250
      width: 250
      color: Colors.cyan
      child: Text(
        'this 2nd text will arrange vertically',
      ),
    ),
    const Container(
      height: 250
      width: 250
      color: Colors.yellow
      child: Text(
        'this 3rd text will arrange vertically',
      ),
    ),
  ],
),
```

4. `Stack()`
<br> this widget can stackup bunch of widget in top each other.

```dart
Stack(
  children: [
    Container(
      child: Image.asset(
         "assets/image_path.jpg",
      ),
    ),
    Text(
      'this text will be stack on top of the image',
    ),
  ], 
),
```

5. `SingleChildScrollView()`
<br> if we have so much data to display in arrange method like `Column()` or `Row()`, with this widget we can make all of that data in one scroll section only without displaying every data inside arrange method widget.

```dart
SingleChildScrollView(
  padding: EdgeInsets.all(5.0),
  child: Column(
    children: [
      Text(
        'Data 1',
        style: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        'Data 2',
        style: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        'Data 3',
        style: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        'Data 4',
        style: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        'Data 5',
        style: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),
),
```

6. `ListView()`
<br> we can make list of data with `ListView()` widget without afraid to past of screen device.

```dart
ListView(
  children: [
    Container(
      child: Text(
        'Data 1',
        style: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    Container(
      child: Text(
        'Data 2',
        style: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ],
),
```

There is `ListView.builder()` to make dynamic list (number of list item is following number of data).

```dart
final textDummy = {
  "Data 1",
  "Data 2",
  "Data 3",
}

ListView.builder(
  //to count number of data that will display in list
  itemCount: 3,

  itemBuilder: (context, index) {
    return Container(
      child: Text(
        //this is array String name 
        textDummy(index),
        style: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.bold,
        ),
      ),
    ), 
  }
),
```

7. `GridView()`
<br> if you want to make certain of grid section you can use this widget, the most recognize with this widget is like 3 Grid of instagram feed section.

```dart
GridView.count(
  //this is to determinate how much grid in a row
  crossAxisCount: 3,
  children: [
    FlutterLogo(),
    FlutterLogo(),
    FlutterLogo(),
    FlutterLogo(),
    FlutterLogo(),
    FlutterLogo(),
  ],
),
```
there is 5 type to use this widget other than `GridView.count()`, for the example, we will make same output by using each type. so we'll make 2 column grid with 4 flutter logo widget.

**7a. `GridView()`**
```dart 
GridView(
  //to setup number of column with only GridView() you need to use gridDelegate
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
  ),
  children: [
    FlutterLogo(),
    FlutterLogo(),
    FlutterLogo(),
    FlutterLogo(),
  ],
),
```

**7b. `GridView.builder()`**
```dart
GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
  //the item grid will follow number of item count.
  itemBuilder: (_, index) => FlutterLogo(),
  itemCount: 4,
),
```

**7c. `GridView.custom()`**
```dart
GridView.custom(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
  childrenDelegate: SliverChildListDelegate(
    [
      FlutterLogo(),
      FlutterLogo(),
      FlutterLogo(),
      FlutterLogo(),
    ],
  ),
),
```

**7d. `GridView.extent()`**
```dart
GridView.extent(
  maxCrossAxisExtent: 400,
  children: <Widget>[
    FlutterLogo(),
    FlutterLogo(),
    FlutterLogo(),
    FlutterLogo(),
  ],
),
```

&emsp;
## **4. Extract Widget / Reusable widget**
Extract Widget is to make arrange widget looks clean by defined it in new state class.
and this is part of OOP in writing widget.

```dart
SingleChildScrollView(
  scrollDirection: Axis.vertical,
  Column(
   children: [
     //how to use the widget
     ColorBox(text: "Red", colors: Colors.red, ),
     ColorBox(text: "Yellow", colors: Colors.amber, ),
     ColorBox(text: "Blue", colors: Colors.blue, ),
     //ect
   ],
  ),
),

...
// this is extract widget and can be move to own file
class ColorBox extends StatelessWidget {
  const ColorBox ({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  final String? text;
  final Color? colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: colors,
      child: Center(
        child: Text(
          text,
        ),
      ),
    ),
  }
}
```