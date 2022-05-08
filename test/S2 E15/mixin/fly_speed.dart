mixin FlySpeed {
  int? _flySpeed = 0;

  set setFly(int flySpeed) {
    _flySpeed = flySpeed;
  }

  int? get fly => _flySpeed;
}
