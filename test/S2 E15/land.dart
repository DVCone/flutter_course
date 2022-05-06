import "parent.dart";

class Mamals extends Animal {
  int? runSpeed;
  String? name;

  Mamals({this.runSpeed, required this.name, required int weight})
      : super(
          weight: weight,
          category: "Land Base",
        );
}
