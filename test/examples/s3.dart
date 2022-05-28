//import MaterialApp widget
import 'package:flutter/material.dart';

///if you click this -> [MyApp] it will bring you to MyApp Class name

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
        //appBar widget
        appBar: AppBar(
          //title in AppBar
          title: const Text(
            "First App",
          ),

          //to centering the title
          centerTitle: true,
          //Note:
          /*
              1. in Android center title is set false by default.
              2. in Iphone center title is set true by default.
            */

          //background color hex type
          /* backgroundColor: Color(0xFF0a85ab), */

          //background color data class type
          /* backgroundColor: Colors.cyan, */

          //background color data class type + contrast
          backgroundColor: Colors.cyan[800],
        ),

        //invisible widget Center
        body: Center(
          //Invisible widget Column
          child: Column(
            children: [
              //Container box widget
              Container(
                //wide size container
                width: 200,
                //length size container
                height: 200,
                //color container
                color: Colors.yellow[300],
                //text widget
                child: const Text(
                  "Hello World!",
                ),
              ),

              //SizedBox widget
              const SizedBox(
                height: 10,
              ),

              Container(
                width: 200,
                height: 200,
                color: Colors.yellow[300],

                //FlutterLogo widget
                child: const FlutterLogo(
                  size: 100,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              //ElevatedButton widget
              ElevatedButton(
                // button function
                onPressed: () {
                  debugPrint("this is just elevated button");
                },
                //button layout
                child: const Text(
                  "Button",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              //elevated button with icon widget
              ElevatedButton.icon(
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

              const SizedBox(
                height: 10,
              ),

              //Image provider widget
              const Image(
                image: AssetImage("../assets/imagePath"),
              ),
              //alternative image provider widget
              Image.asset("image path"),
              /*
                Note:
                  1. make a image folder in flutter project
                  2. register your image folder in pubspec.yaml at the asset section
                  3. store your image inside image folder
              */

              //Image Network widget
              const Image(
                image: NetworkImage("place a url in hire"),
              ),
              //alternative of image network widget
              Image.network("url"),
              /*
                Note:
                  1. just insert the image url
                  2. your flutter app need to connect with internet to load the image
              */

              //Image file widget
              /*
              Image(image: FileImage(file)),
              Image.file(file),
              */

              //memory image widget
              /*
              Image(image: MemoryImage(bytes)),
              Image.memory(bytes),
              */
            ],
          ),
        ),
      ),
    );
  }
}
