# **Chapter 2 : Dart Fundamental**
## **1. What is Dart?**
Dart is Programming Language to developing flutter SDK.
## **2. Characteristic of Dart**
**a. Static Type**  <br/>
Dart language need to defined a variable before using it.
```dart
//example: 
var name = "Hello World";
debugPrint(name);
```
[Practice on `test/widget_test.dart`]

**b. Inference Type** <br/>
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

**c. String Expression / String Interpolation** <br/>
Dart can use ($) symbol to show all type of variable into the string.
```dart
//example:
var word = "Hello World";
String name = "Alex";
debugPrint("$word and how are you $name");
```
[Practice on `test/widget_test.dart`]

**d. Object Oriented Programming / OOP** <br/>
Dart supports object-oriented programming features like classes, interfaces, etc.

## **3. Data Type**
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
String name = "Jhon Doe";     
int age = 20;                 
num weight = 60.5;            
double height = 5;            
bool marriage = true;         
List<dynamic> favoriteNumber = [1, "two", 3]; 
List<String> kidName = ["Joe", "Jean", "Jerry"]; 
List<int> favoriteNumber = [1, 2, 3]; 

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
      debugPrint(name.toLowerCase());
      //result is jhon doe

      //make all string is uppercase
      debugPrint(name.toUpperCase());
      //result is JHON DOE

      //split string from predetermined order
      debugPrint(name.substring(2));
      //result is on Doe
      debugPrint(name.subString(2, 7));
      //result is on D

double age1 = -30.8;
double age2 = 40.8;
      //make number is absolute positive
      debugPrint(age1.abs()); 
      //Result is 30.8

      //to rounded decimal number
      debugPrint(age2.cell()); 
      //Result is 41
      debugPrint(age2.floor());
      //Result is 40
```

## **4. Final & Const**
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

## **5. Comments**
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

## **6. Function**
Dart will execute the code only inside the function.
```dart
//example
void main() {
      //this is another function
      functionName(3, 5); 
}

//variable scoup
int functionName(int a, int b) {
      int result = a * b;
      return result;
}
```

## **7. Syncronous (sync) and Asyncronous (async)**
there are 2 types of data processing in dart.

**a. Syncronous (sync) = series** <br/>
if there are 2 processing route (ex: route 1, route 2), syncronous will only process one route and stop the other one.

**b. Asyncronous (async) = parallel** <br/>
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

## **8. Exception**
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

## **9. Loop**
Dart Loop is used to run a block of code repetitively for a given number of times or until matches the specified condition. there is 2 type in dart loop :

**a. For loop** <br/>
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
**b. Do-While Loop** <br/>
```dart
void main() {
      int i = 1;
      do {
            debugPrint('$i');
            i++;
      } while(i <= 10);
}
```
**c. List Loop** <br/>
```dart
void main() {
      List<String> animal = ['cat', 'dog', 'fish'];

      for(int i = 0; i <= animal.length - 1; i++){
            debugPrint('Animal : ${animal[i]}')
      }
}
```
[Practice on `test/widget_test.dart`]

## **10. Conditional Expression**
Also Called "Ternary Operator" or it's simplify of **if-else Statement** to compire a statement from other data.

**a. if-else**
```dart
void main() {
  String name = "Alex";
  if(name == "Jhon"){
        //if statement is wright then go to output
        debugPrint('He is Jhon');
  } else if(name == "Peter") {
        //if statement is wrong then check with other statement
        debugPrint('He is Peter');
  } else {
        //if statement is wrong then go to output
        debugPrint('He isn\'t Jhon or peter, he is $name');
  }
}
```

**b. switch-case**
```dart
void main() {
      String name = "Alex";

      switch(name){
            //First Statement check
            case "Jhon": 
                  debugPrint("He is Jhon");
                  break;
            //Second Statement check
            case "Peter": 
                  debugPrint("He is Peter");
                  break;
            //Last Statement check
            case "Alex": 
                  debugPrint("He is Alex");
                  break;
            //if all the statement is wrong then go to output
            default :
                  debugPrint("He isn't Jhon or Peter, He is $name");
                  break;
      }
}

//Note: 
      /*
            Every [case] must be [break;] to stop process the next case. but in [default] it can run without [break;] because it's ;last statement.
      */
```

## **11. Collections**
Collections is Dart variable it can be included more than 1 data.

**a. Map{"..." : ...,}**
```dart
void main() {
      Map report = {
            "math" : [4, 5, 6, 2],
            "art" : [5, 7, 8, 5],
            "biology" : [8, 9, 7, 4],
      };

      //get with Key
      debugPrint('${report["math"]}');

      //get with Key by index
      debugPrint('${report["math"][2]}');
}
//Note: 
      /*
      Map is must using "Key : Value".
      */
```

**b. Set{}**
```dart
void main() {
      Set biology = {8, 9, 4, 6, 7};
      Set math    = {4, 5, 8, 10};

      //get all index value
      debugPrint('$biology');

      //get by index
      debugPrint('${biology.elementAt(1)}');

      //combine a value from other Set
      debugPrint('${biology.union(math)}');

      //get the same value from other Set
      debugPrint('${biology.intersection(math)}')

}
//Note :
      /*
      Set can't use index "debugPrint('${biology[0]}');". but Set is use ".elementAt()". you can use Set as intersection or union, ect.
      */
```

**c. List[]**
```dart
void main() {
      List animals = ['cat', 'dog', 'fish'];

      //get by index
      debugPrint("${animals[0]}");
}
```

**d. Spread Collection**
```dart
void main() {
      //original data
      List data = [4, 7, 8, 2];

      //add more data from original data with spread collection
      List dataCopy = [...data, 5];

      debugPrint('$dataCopy');
}
//Note :
      /*
      a. Spread Collection is to add more data into the new data collection from previous collection, to use it jus add 3 dots before previous collection name.
      b. Spread Collection can use with List[] and Set{}.
      */
```

## **12. Null Safety**
Null Safety is Dart feature to know about error by null value. there is 3 type new syntax **!, ?, late**.

- ? = defined a variable can be null.
- ?? = to handle null value.
- ! = defined a variable was not null anymore.


Null Safety feature is introduce in flutter v.2.12.
```dart
//Example 1
void main() {
      String? name = getName();

      if(name == null) {
            debugPrint("There is null data");
      } else {
            debugPrint('$name is ${name!.length} character');
      }
}

String? getName() {
      return "Jhon";
}
```
```dart
//Example 2
void main() {
      String? name = getName();

      debugPrint(name?.length ?? "There is null data");
}

String? getName() {
      return "jean";
}
```