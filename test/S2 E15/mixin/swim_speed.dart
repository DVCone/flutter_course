mixin SwimSpeed {
  int? _swimSpeed = 0;

  set setSwim(int swimSpeed) {
    _swimSpeed = swimSpeed;
  }

  int? get swim => _swimSpeed;
}
