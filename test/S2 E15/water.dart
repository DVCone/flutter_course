import "parent.dart";

class Fish extends Animal {
  String? name;
  int? swimSpeed;

  Fish({this.swimSpeed,required this.name, required int weight})
      : super(
          category: "Water Base",
          weight: weight,
        );
}
