mixin RunSpeed {
  int? _runSpeed = 0;

  set setRun(int runSpeed) {
    _runSpeed = runSpeed;
  }

  int? get run => _runSpeed;
}
