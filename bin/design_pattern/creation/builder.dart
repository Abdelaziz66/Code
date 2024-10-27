class Car {
  String color;
  String engine;
  int doors;

  Car._builder(CarBuilder builder)
      : color = builder.color,
        engine = builder.engine,
        doors = builder.doors;

  @override
  String toString() => 'Car(color: $color, engine: $engine, doors: $doors)';
}

class CarBuilder {
  String color = 'white';
  String engine = 'standard';
  int doors = 4;

  CarBuilder setColor(String color) {
    this.color = color;
    return this;
  }

  CarBuilder setEngine(String engine) {
    this.engine = engine;
    return this;
  }

  CarBuilder setDoors(int doors) {
    this.doors = doors;
    return this;
  }

  Car build() {
    return Car._builder(this);
  }
}

void callBuilder() {
  var car = CarBuilder()
      .setColor('red')
      .setEngine('V8')
      .setDoors(2)
      .build();

  print(car); // Output: Car(color: red, engine: V8, doors: 2)
}
