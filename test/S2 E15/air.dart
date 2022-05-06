import "parent.dart";

class Bird extends Animal {
  String? name;
  int? flySpeed;

  Bird({this.flySpeed, required this.name, required int weight})
      : super(
          category: "Air Base",
          weight: weight,
        );
}
