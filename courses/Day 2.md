# **Chapter 2 : Dart Fundamental**
## A. What is Dart?
Dart is Programming Language to developing flutter SDK.

## B. Characteristic of Dart
1. Static Type  <br/>
Dart language need to defined a variable before using it.
```dart
//example: 
var name = "Hello World";
debugPrint(name);
```
[Practice on `test/widget_test.dart`]

2. Inference Type <br/>
Dart can make variable to follow data type from the value, this does not apply if the data type has been given to the variable.
```dart
// this variable automatically defined as String
var word = "Hello World";
debugPrint(word);

// this string can't be a int
String age = 10;
debugPrint(age);
```
[Practice on `test/widget_test.dart`]

3. String Expression / String Interpolation <br/>
Dart can use ($) symbol to show all type of variable into the string.
```dart
var word = "Hello World";
String name = "Alex";
debugPrint("$word and how are you $name");
```
[Practice on `test/widget_test.dart`]

4. Object Oriented Programming / OOP <br/>
Dart supports all the features for Object-oriented programing paradigm like Classes, Inheritance, Interfaces, Polymorphism, etc.

## C. Data Type
