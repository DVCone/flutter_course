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

///this is document comment use with brecket [MyApp]

/**
* this is 
* multiple line of
* document comment use with bracket [MyApp]
*/
```

## F. Function
Dart will execute the code only inside the function.
```dart
//example
void main() {
      functionName(3, 5); //this is another function
}

//variable scoup
int functionName(int a, int b) {
      int result = a * b;
      return result;
}
```

## G. Syncronous (sync) and Asyncronous (async) 
there are 2 types of data processing in dart.

1. Syncronous (sync) = series <br/>
if there are 2 processing route (ex: route 1, route 2), syncronous will only process one route and stop the other one.

2. Asyncronous (async) = parallel <br/>
if there are 2 processing route (ex: route 1, route 2), asyncronous will process one route and the other route is still processing.
```dart
//example of syncronous
void main() {
   debugPrint("first execute");
   async1();
   debugPrint("secound execute");
   debugPrint("tridh execute");
}

//example of asyncronous
void async1() {
      //this is future with anonymous function
      Future({} { 
            debugPrint("async execute")
      });
}

//Note: 
      /*
      you can't execute asyncronous example in widget_test.dart, use dardPad to try it
      */
```

## H. Exception
It is Dart feature to except other data type or function.

```dart
void main() {
      //it will except string type ("..") to the integer type (int) 
      int age = int.parse("50");
      debugPrint(age);

      try{
            //this result will be error because string format can't be integer
            int ages = int.parse("abc");
            debugPrint(ages);
      }catch (e) {
            //the error will be display by catch the error function
            debugPrint(e);
            //make custom error instruction
            if(e == FormatException){
                  debugPrint("Please input number in Integer section!");
            }
      }
}
```

## I. Loop
Dart Loop is used to run a block of code repetitively for a given number of times or until matches the specified condition. there is 2 type in dart loop :

1. For loop <br/>
```dart
void main() {
      for(int i = 1; i <= 5; i++) {
        debugPrint('$i');
      }

      for(int a = 10; a >= 5; a++) {
        debugPrint('$a');
      }
}
```
2. Do-While Loop <br/>
```dart
void main() {
      int i = 1;
      do {
            debugPrint('$i');
            i++;
      } while(i <= 10);
}
```
3. List Loop <br/>
```dart
void main() {
      List<String> animal = ['cat', 'dog', 'fish'];

      for(int i = 0; i <= animal.length - 1; i++){
            debugPrint('Animal : ${animal[i]}')
      }
}
```
[Practice on `test/widget_test.dart`]

## H. Conditional Expression


Source:
<br/> S2 E1: https://youtu.be/rNBdM5YAJtY
<br/> S2 E2: https://youtu.be/XKOEQo6KPsE
<br/> S2 E3: https://youtu.be/5jxQBuxS2ng
<br/> S2 E4: https://youtu.be/zLzlSVD85GA
<br/> S2 E5: https://youtu.be/EzG4jRvvxLo
<br/> S2 E6: https://youtu.be/VokB_IATZl0
<br/> S2 E7: https://youtu.be/kLxVlV45x9g
<br/> S2 E8: https://youtu.be/KVcmgr29v9c