
import 'creational/single_tone.dart';
import 'creational/proto_type.dart';

void main(List<String> arguments)async {

  // singleTone();
  protoType();

}

void singleTone() {
  SingleTone s1= SingleTone.getInstance()!;
  s1.addCounter();
  print(s1.counter);

  SingleTone s2= SingleTone.getInstance()!;
  s2.addCounter();
  print(s2.counter);
}

void protoType() {
  Car originalCar = Car(model: 'Tesla Model S', color: 'Red');
  Car clonedCarShallowCopy = originalCar;
  Car clonedCar = originalCar.clone();

  originalCar.color = 'Blue';
  print('Original Car: $originalCar');
  print('clonedCarShallowCopy Car: $clonedCarShallowCopy');
  print('Cloned Car: $clonedCar');


}





