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

void callProtoType() {
  Car originalCar = Car(model: 'Tesla Model S', color: 'Red');
  Car clonedCarShallowCopy = originalCar;
  Car clonedCar = originalCar.clone();

  originalCar.color = 'Blue';
  print('Original Car: $originalCar');
  print('clonedCarShallowCopy Car: $clonedCarShallowCopy');
  print('Cloned Car: $clonedCar');


}
