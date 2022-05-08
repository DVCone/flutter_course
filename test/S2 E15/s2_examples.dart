import 'package:flutter/material.dart';

// Section 2 Examples

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

//Example of Inheritence Class
/*
import 'S2 E15/air.dart';
import 'S2 E15/land.dart';
import 'S2 E15/water.dart';
void main() {
  //attribute value
  Mamals animal1 =
    Mamals(
      name: "Lion",
      weight: 10, 
      runSpeed: 4,
    );

  //output
  debugPrint(
      "1st Animal: ${animal1.name} is ${animal1.category} with ${animal1.weight} Kg, and have ${animal1.runSpeed} run speed");

  animal1.food = 1;

  debugPrint("final ${animal1.name} weight is ${animal1.weight}");

  debugPrint("\n=====\n");

  Fish animal2 = Fish(
    name: "Shark",
    weight: 10,
    swimSpeed: 20,
  );

  debugPrint(
      "2nd Animal: ${animal2.name} is ${animal2.category} with ${animal2.weight} Kg, and have ${animal2.swimSpeed} swim speed");

  animal2.food = 2;

  debugPrint("final ${animal2.name} weight is ${animal2.weight}");

  debugPrint("\n=====\n");

  Bird animal3 = Bird(
    name: "Hawk",
    weight: 10,
    flySpeed: 20,
  );

  debugPrint(
      "3rd Animal: ${animal3.name} is ${animal3.category} with ${animal3.weight} Kg, and have ${animal3.flySpeed} fly speed");

  animal3.food = 3;

  debugPrint("final ${animal3.name} weight is ${animal3.weight}");
}
*/

//Example of Mixin
/*
import './S2 E15/amphibi.dart';

void main() {
  Reptile animal4 = Reptile(
    name: "Aligator",
    weight: 10,
  );

  animal4.setRun = 13;
  animal4.setSwim = 20;

  debugPrint(
      "3rd Animal: ${animal4.name} is ${animal4.category} with ${animal4.weight} Kg, and can run in ${animal4.run} m/h and swim in ${animal4.swim} m/h");

  animal4.food = 3;

  debugPrint("final ${animal4.name} weight is ${animal4.weight}");
}
*/