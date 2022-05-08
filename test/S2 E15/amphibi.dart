import "parent.dart";

import './mixin/run_speed.dart';
import './mixin/swim_speed.dart';

class Reptile extends Animal with RunSpeed, SwimSpeed {
  String? name;

  Reptile({required this.name, required int weight})
      : super(
          weight: weight,
          category: "Amphibi Base",
        );
}

