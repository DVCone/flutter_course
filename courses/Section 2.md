# **Chapter 2 : Dart Fundamental**
## **1. What is Dart?**
Dart is Programming Language to developing flutter SDK.

&emsp;
## **2. Characteristic of Dart**
**a. Static Type**  <br/>
Dart language need to defined a variable before using it.
```dart
//example: 
var name = "Hello World";
debugPrint(name);
```
> [Practice on `test/widget_test.dart`]

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
> [Practice on `test/widget_test.dart`]

**c. String Expression / String Interpolation** <br/>
Dart can use ($) symbol to show all type of variable into the string.
```dart
//example:
var word = "Hello World";
String name = "Alex";
debugPrint("$word and how are you $name");
```
> [Practice on `test/widget_test.dart`]

**d. Object Oriented Programming / OOP** <br/>
Dart supports object-oriented programming features like classes, interfaces, etc.

&emsp;
## **3. Data Type**
this is a list of Data Type in Dart language :
- String    = `String`
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

&emsp;
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

&emsp;
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

&emsp;
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

&emsp;
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

&emsp;
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
> [Practice on `test/widget_test.dart`]

&emsp;
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
> [Practice on `test/widget_test.dart`]

&emsp;
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
            Every [case] must be [break;] to stop process to the next case. 
            but in [default] it can run without [break;] because it's ;last statement.
      */
```

&emsp;
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
      Set can't use index "debugPrint('${biology[0]}');". but Set is use ".elementAt()". 
      you can use Set as intersection or union, ect.
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
      a. Spread Collection is to add more data into the new data collection from previous collection, 
      to use it jus add 3 dots before previous collection name.
      b. Spread Collection can use with List[] and Set{}.
      */
```

&emsp;
## **12. Null Safety**
Null Safety is Dart feature to know about error by null value. there is 3 type new syntax **!, ?, late**.

- ? = defined a variable can be null.
- ?? = to handle null value.
- ! = defined a variable was not null anymore.
- late = to ensure there is inialization variable before execute a variable maybe have null value.

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
```dart
//Example 3
void main() {
      late String? name;

      name = "Unknown";

      paramName(name);
}

void paramName(String? paramname) {
      debugPrint(paramname);
}
```

&emsp;
## **13. Object Oriented Programming (OOP)**
<p>
OOP or Object Oriented Programming paradigm is to make everything is object secquently and very helpful in manageable dart project because with this concepts will make the project easy to use 
and maintenance.
</p>

&emsp;
## **14. Class**
Class is a part of OOP Paradigm.
```dart
//Example 1
void main() {
      //Instance of 'object'
      debugPrint(Cloth());

      //get index from object
      debugPrint("${Cloth().type} color is ${Cloth().color}");
}

//Class Object
class Cloth {
      String type = "Fiber";
      String color = "White";
}
```
```dart
//Example 2
void main() {
      //temporary variable
      var underwear = Cloth();
      underwear.type = "Cotton";
      underwear.color = "Black";

      //get index from object
      debugPrint("${underwear.type} underwear color is ${underwear.color}");
}

//Class Object
class Cloth {
      String? type;
      String? color;
}
```

### **Constructor**
The different between positional constructor and named constructor is like using List[] and Map{}, to use named constructor just add {} and call the Key: before the value. 

**a. Positional Constructor**
```dart
void main() {
      //constructor variable
      var underwear = Cloth("fiber", "blue");

      //get index from object
      debugPrint("${underwear.type} underwear color is ${underwear.color}");
}

//Class Object
class Cloth {
      //atribute
      String? type;
      String? color;

      //positional constructor
      Cloth(String types, String colors){
            type = types;
            color = colors;
      }  
}
```

**b. Named Constructor**
```dart
void main() {
      //constructor variable
      var underwear = Cloth(types: "fiber",colors: "blue");

      //get index from object
      debugPrint("${underwear.type} underwear color is ${underwear.color}");
}

//Class Object
class Cloth {
      //atribute
      String? type;
      String? color;

      //named constractor
      Cloth({String? types, String? colors}) {
            type = types;
            color = colors;
      }  
}
```
**c. Direct Positional Constructor**
```dart
void main() {
      //constructor variable
      var underwear = Cloth("fiber", "blue");

      //get index from object
      debugPrint("${underwear.type} underwear color is ${underwear.color}");
}

//Class Object
class Cloth {
      //atribute
      String? type;
      String? color;

      //direct positional constractor
      Cloth(this.type, this.color);
}
```

**d. Direct Named Constructor**
```dart
void main() {
      //constructor variable
      var underwear = Cloth(type: "fiber",color: "blue");

      //get index from object
      debugPrint("${underwear.type} underwear color is ${underwear.color}");
}

//Class Object
class Cloth {
      //atribute
      String? type;
      String? color;

      //direct named constractor
      Cloth({this.type, this.color});
}
```

**e. Method Set Function Constructor**
```dart
void main() {
      //constructor variable
      var underwear = Cloth(type: "fiber",color: "blue");

      //old result
      debugPrint("${underwear.type} underwear color is ${underwear.color()}");

      //change attribute value
      underwear.changeCloth("Silk");

      //new result
      debugPrint("${underwear.type} underwear color is ${underwear.color()}");
}

//Class Object
class Cloth {
      //attribute
      String? type;
      //Private attribute
      String? _color;

      //direct named constractor
      Cloth({this.type, String? color}) {
            _color = color;
      }

      //method Set function
      void changeCloth(String? newType) {
            type = newType;
      }

      //Conventional Get Method
      String? color() {
            return _color;
      }
}

//Note:
      /*
      to make private attribute so it can't be change, add underscore (_) before attribute name.

      private attribute is use for encapsulation to prevent dirrect changes to data value.
      */
```

**f. Setter & Getter Method Constructor**
```dart
void main() {
      //constructor variable
      var underwear = Cloth(type: "fiber",color: "blue");

      //old result
      debugPrint("${underwear.type} underwear color is ${underwear.color}");

      //change attribute value
      underwear.setType = "Cotton";

      //new result
      debugPrint("${underwear.type} underwear color is ${underwear.color}");
}

//Class Object
class Cloth {
      //attribute
      String? type;
      //Private attribute
      String? _color;

      //direct named constractor
      Cloth({this.type, String? color}) {
            _color = color;
      }

      //Setter Method
      set setType(String? newType) {
            type = newType;
      }

      //Getter Method
      String? get color {
            return _color;
      }
}
``` 

&emsp;
## **15. Inheritance Class**
Basically In heritance in how to make class code is more simple to understand and simple to use because this is part of OOP in dart.

> [See example of without Inheritence on `test/S2 E15/noinheritence.dart`]

if you have unique data that need specific attribute, you must add it manualy to attribute class section also with it constructor, like below :

```dart
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
```

so, in order to make inheritence class you must separate between general attribute class and specific
attribute class.

> [ See example of general attribute class on `test/S2 E15/parent.dart`]
```dart
class Animal {
  //General attribute
  String? name;
  String? category;
  late int _weight;

  //General constructor
  Animal({
    required this.name,
    required int weight,
    this.category,
  })
}
```

after you defined general attribute class, this is what of Inheritence Class mean. the purpose of it, so inheritence class can be extended to other specific class that need same attribute by just import the inheritence class file.

> [ See example of specific attribute class on <br>
`test/S2 E15/land.dart`, <br>
`test/S2 E15/water.dart`, <br>
`test/S2 E15/air.dart` <br>
]

```dart
//example from land.dart
import "parent.dart";

class Mamals extends Animal {
  // specific attribute
  int? runSpeed;
  String? name;
  
  //specific constructor
  Mamals({this.runSpeed, required this.name, required int weight})
      : super(
          weight: weight,
          category: "Land Base",
        );
}

//Note :
      /*
            super : is value of exetended class from Inheitence class
      */
```

after you make specific attribute class that extended from inheritence class, now you can use it for data that matches in the specific attribute by just import specific attribute class file without importing inheritence class file again.

> [ See example of general attribute class on `test/widget_test.dart`]

&emsp;
## **16. Abstract Class**
If you use Inheritence Class, there is chance to call the Inheritence class without the specific attribute class, wich is cause to be error and to prevent this is happen you can add `abstract` in front of Inheritence class. so you cant use directly to inheritence class.

```dart
abstract class Animal {
  //Attribute
      ...
  //Constructor
      ...
}
```

> [ See example of abstract class on `test/S2 E15/parent.dart`]

&emsp;
## **17. Mixin**
To understand what Mixin mean, let's back to Inheritence class Example. there is 3 different category of animals defined by ability speed: 
- land = run speed attribute
> [ See on `test/S2 E15/land.dart`]
- water = swim speed attribute
> [ See on `test/S2 E15/water.dart`]
- air = fly speed attribute
> [ See on `test/S2 E15/fly.dart`]

now, how about a animal that can live both in land and water like reptile ect. so we make new category of animal called amphibi. this type animal have ability to run and swim so they need land animal attribute and water animal attribute.
> [ See on `test/S2 E15/amphibi.dart`]

make this work, OOP dart have ability to separate the attribute class. so, we make 3 individual attribute class in 3 different file :

```dart
mixin RunSpeed {
  int? _runSpeed = 0;

  set setRun(int runSpeed) {
    _runSpeed = runSpeed;
  }

  int? get run => _runSpeed;
}
```

> [ See on `test/S2 E15/mixin/run_speed.dart`] <br>
[ See on `test/S2 E15/mixin/swim_speed.dart`] <br>
[ See on `test/S2 E15/mixin/fly_speed.dart`]

after that, we just call the extended class for the specific attribute without need to defined the ability attribute again amphibi file.

```dart
//inheritence class
import "parent.dart";

//mixin class
import './mixin/run_speed.dart';
import './mixin/swim_speed.dart';


class Reptile extends Animal with RunSpeed, SwimSpeed {
  //attribute
  String? name;

  //constructor
  Reptile({required this.name, required int weight})
      : super(
          weight: weight,
          category: "Amphibi Base",
        );
}
```

Note :
1. dont forget to Import the mixin file
2. to use more attribute class in mixin just add the class name after :

```dart
class ... extends ... with mixin1, mixin2, mixin3 {

}
```
to use the mixin class in output, you just call the class after using amphibi class.
> [Practice on `test/widget_test.dart`]

&emsp;
## **18. Enum**
Enum is OOP standard to make easy for search big data in list or other data type without remembering order of the data.
let's say we have this data :

> 0 = "cat",<br>
1 = "dog",<br>
2 = "lion",<br>
else = "unkwon"

Example without using enum :
```dart

//variable search
var animal = 1;

//data condition
void main() {
      if(animal == 0){
            debugPrint("cat");
      } else if(animal == 1){
            debugPrint("dog");
      } else if(animal == 2){
            debugPrint("lion");
      } else {
            debugPrint("unknown");
      }
}
```

after using Enum :
```dart
//enum data list
enum animal {cat, dog, lion, unknown}

void main() {
  
  //variable search
  var animals = animal.cat;
  
  //data condition
  if(animals == animal.cat){
      debugPrint("cat");
  } else if(animals == animal.dog){
      debugPrint("dog");
  } else if(animals == animal.lion){
      debugPrint("lion");
  } else {
      debugPrint("unknown");
  }
}
```