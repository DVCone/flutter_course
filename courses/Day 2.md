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
example:
/// this variable automatically defined as String
var word = "Hello World";
debugPrint(word);

/// this string can't be a int
String age = 10;
debugPrint(age);
```
[Practice on `test/widget_test.dart`]

3. String Expression / String Interpolation <br/>
Dart can use ($) symbol to show all type of variable into the string.
```dart
//example:
var word = "Hello World";
String name = "Alex";
debugPrint("$word and how are you $name");
```
[Practice on `test/widget_test.dart`]

4. Object Oriented Programming / OOP <br/>
Dart
## C. Data Type
this is a list of Data Type in Dart language :
String    = `String`
- Boolean   = `bool`
- Number    = `num`
- Integer   = `int`
- Double    = `double`
- List      = `List<...>`
- Map       = `{'context1' : 'index', 'context2' : 'index'}`
- Dynamic   = `<dynamic>`

```dart
//example:
String name = "Jhon Doe";     ///Jhon Doe
int age = 20;                 ///20
num weight = 60.5;            ///60.5
double height = 5;            ///5.0
bool marriage = true;         ///true
List<dynamic> favoriteNumber = [1, "two", 3]; /// 1,two,3
List<String> kidName = ["Joe", "Jean", "Jerry"]; ///Joe,Jean,Jerry
List<int> favoriteNumber = [1, 2, 3]; /// 1,2,3

//Map Data Type
void main() {
      Map map = {'kid1' : 'joe', 'kid2' : 'jean', 'kid3' : 'jerry'};
      debugPrint(map['kid2']);
} ///jean

//Note:
      /*
      1. Integer (int) can't use decimal number
      2. Number (num) can use decimal number
      3. Double (double) alway make to decimal number
      */
```
you can process data type in dart language.
```dart
//Example of data type processing
String name = "Jhon Doe";
      //make all string is lowercase
      debugPrint(name.toLowerCase()); ///jhon doe
      //make all string is uppercase
      debugPrint(name.toUpperCase()); /// JHON DOE
      //split string from predetermined order
      debugPrint(name.substring(2)); /// on Doe
      debugPrint(name.subString(2, 7)); ///on D

double age1 = -30.8;
double age2 = 40.8;
      //make number is absolute positive
      debugPrint(age1.abs()); ///30.8
      //to rounded decimal number
      debugPrint(age2.cell()); ///41
      debugPrint(age2.floor()); ///40
```

## D. Final & Const
Final will defined as fixed variable and cant be changed.

```dart
void main() {
      final int age;
      age = 20;
}
```
Const must be difened with value and can be changed.
```dart
void main() {
      const int age = 19;
      age = 20;
}
```

## E. Comments
Comments `//... or /*...*/` will make project code more clean and will help other developers to understand the code, also with comment you can make under development will not executed by flutter.
```dart
//this is single line comment 

/* 
this is 
mutiple line
comments
*/
```






Source:
<br/> https://youtu.be/rNBdM5YAJtY
<br/> https://youtu.be/XKOEQo6KPsE
<br/> https://youtu.be/5jxQBuxS2ng