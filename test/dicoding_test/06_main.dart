import '06_animal.dart';
import '06_extension.dart';
 
void main() {
  // Properties & Method Module
  var garfieldCat = Animal('Garfield', 2, 4.2);
  garfieldCat.eat();
  garfieldCat.poop();
  print(garfieldCat.weight);

  // Extension Module
  var unsortedNumbers = [2, 5, 3, 1, 4];
  print(unsortedNumbers);
  var sortedNumbers = unsortedNumbers.sortAsc();
  print(sortedNumbers);
}