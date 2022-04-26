import 'package:flutter/material.dart';


// Example of Static Type
  /*
    void main() {
      String name = "Hello World";
      debugPrint(name);
    }

  // Note : 
    1. void = don't want return function.
    2. flutter will only work with `main() {}` function.
    3. `main() {}` function can work without void and can use return function.
  */

// Example of Inference Type 
  /*
  void main() {
    // String
    var name1 = "Hello World";
    String name2 = "Hello World";
    debugPrint(name2);

    // int
    var age1 = 20;
    int age2 = 20;
    debugPrint(age2.toString());

    // List<int>
    var data1 = [1, 2, 3];
    List<int> data2 = [1, 2, 3];
    debugPrint(data2.toString());

    // List<String>
    var group1 = ["Alex", "Jhon", "Joe"];
    List<String> group2 = ["Alex", "Jhon", "Joe"];
    debugPrint(group2.toString());
  }
  */


// Example of String Interpolation
  /*
  void main() {
    var name = "Alex";
    int age = 21;
    debugPrint("Hi, My name is $name and i am $age years old.");
  }
  */

void main() {
      Map map = {'kid1' : 'joe', 'kid2' : 'jean', 'kid3' : 'jerry'};
      debugPrint(map['kid2']);
}