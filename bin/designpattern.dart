import 'package:args/args.dart';

import 'creational/single_tone.dart';


void main(List<String> arguments)async {

  SingleTone s1= SingleTone.getInstance()!;
  s1.addCounter();
  print(s1.counter);

  SingleTone s2= SingleTone.getInstance()!;
  s2.addCounter();
  print(s2.counter);

}
