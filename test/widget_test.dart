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

// Example of Map Data type
/*
  void main() {
        Map map = {'kid1' : 'joe', 'kid2' : 'jean', 'kid3' : 'jerry'};
        debugPrint(map['kid2']);
  }
  */

// Example of Exception
/*
  void main() {
    //it will except string type ("..") to the integer type (int)
    int age = int.parse("50");
    debugPrint('$age');

    try {
      //this result will be error because string format can't be integer
      int? ages = int.parse("abc");
      debugPrint('$ages');

    } on FormatException {  //detect error in specific
      //make custom error instruction
      debugPrint("Please input number in Integer section!");

    } catch (e) { //detect error in general
      //the error will be display by catch the error function
      debugPrint('$e');
    }
  }
  */

// Example of Loop
/*
  //For Loop
    void main() {
          for(int a = 10; a >= 5; a--) {
            debugPrint('$a');
          }
    }

  //List Loop
    void main() {
      int i = 1;
      do {
        debugPrint('$i');
        i++;
      } while(i <= 10);
    }

  // List Looping
    void main() {
      List<String> animalList = ['cat', 'dog', 'fish'];

      // Looping with for
        // Conventional Way
          for (int i = 0; i <= animalList.length - 1; i++) {
            debugPrint('Animal : ${animalList[i]}');
          }
        // Dart Way
          for (String animals in animalList) {
          debugPrint('Animal : $animals');
          }

      //Looping with foreach
      animalList.forEach((animals) => debugPrint('Animal : $animals'));
    }
  */

void main() {
  List<String> animalList = ['cat', 'dog', 'fish'];

  for (String animals in animalList) {
    debugPrint('Animal : $animals');
  }
}
