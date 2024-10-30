// The target interface our application expects
abstract class ITemperatureSensor {
  double getTemperature();
}

// Adaptee class providing temperature in Fahrenheit
class FahrenheitSensor {
  double getTemperatureInFahrenheit() {
    return 86.0; // Example temperature in Fahrenheit
  }
}

// Adapter class to convert Fahrenheit to Celsius
class FahrenheitAdapter implements ITemperatureSensor {
  final FahrenheitSensor _fahrenheitSensor;

  FahrenheitAdapter(this._fahrenheitSensor);

  @override
  double getTemperature() {
    // Convert Fahrenheit to Celsius
    double fahrenheit = _fahrenheitSensor.getTemperatureInFahrenheit();
    return (fahrenheit - 32) * 5 / 9;
  }
}

// Client code using the adapter
void callAdapterPattern() {
  // Original Fahrenheit sensor
  FahrenheitSensor fahrenheitSensor = FahrenheitSensor();

  // Adapter allows use of Fahrenheit sensor with Celsius-based interface
  ITemperatureSensor celsiusSensor = FahrenheitAdapter(fahrenheitSensor);

  print("Temperature in Celsius: ${celsiusSensor.getTemperature()}°C");
}
