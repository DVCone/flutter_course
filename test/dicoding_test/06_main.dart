import '06_animal.dart';
 
void main() {
  var garfieldCat = Animal('Garfield', 2, 4.2);
  garfieldCat.eat();
  garfieldCat.poop();
  print(garfieldCat.weight);
}