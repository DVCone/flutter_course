abstract class Animal {
  //Attribute
  String? category;
  late int _weight;

  //Constructor
  Animal({
    required int weight,
    this.category,
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