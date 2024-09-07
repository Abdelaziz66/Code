abstract class Prototype {
  Prototype clone();
}

class Car implements Prototype {
  String model;
  String color;

  Car({required this.model, required this.color});

  @override
  Car clone() {
    return Car(model: model, color: color);
  }

  @override
  String toString() {
    return 'Car: { Model: $model, Color: $color }';
  }
}