import 'package:flutter/material.dart';

class Animal {
  //Attribute
  String? name;
  String? category;
  late int _weight;
  int? runSpeed;
  int? swimSpeed;
  int? flySpeed;

  //Constructor
  Animal({
    required this.name,
    required int weight,
    this.category,
    this.runSpeed,
    this.swimSpeed,
    this.flySpeed,
  }) {
    _weight = weight;
  }

  //getter Method
  get weight => _weight;

  //Setter Method
  set food(int foodWeight) {
    _weight = _weight + foodWeight;
  }
}

void main() {
  //attribute value
  Animal animal1 =
      Animal(
        name: "Cat", 
        weight: 10, 
        category: "Land Base", 
        runSpeed: 4,
      );

  //output
  debugPrint(
      "1st Animal: ${animal1.name} is ${animal1.category} with ${animal1.weight} Kg, and have ${animal1.runSpeed} run speed");

  animal1.food = 2;

  debugPrint("final ${animal1.name} weight is ${animal1.weight}");

  debugPrint("\n=====\n");

  Animal animal2 = Animal(
    name: "Shark",
    weight: 10,
    category: "Water Base",
    swimSpeed: 20,
  );

  debugPrint(
      "2nd Animal: ${animal2.name} is ${animal2.category} with ${animal2.weight} Kg, and have ${animal2.swimSpeed} swim speed");

  animal2.food = 1;

  debugPrint("final ${animal2.name} weight is ${animal2.weight}");

  debugPrint("\n=====\n");

  Animal animal3 = Animal(
    name: "Hawk",
    weight: 10,
    category: "Air Base",
    flySpeed: 20,
  );

  debugPrint(
      "3rd Animal: ${animal3.name} is ${animal3.category} with ${animal3.weight} Kg, and have ${animal3.swimSpeed} fly speed");

  animal3.food = 1;

  debugPrint("final ${animal3.name} weight is ${animal3.weight}");
}
