
import 'package:synchronized/synchronized.dart';
class SingleTone {
  int counter = 0;
  static SingleTone? _instance;
  static final _lockObj = Lock();
  static SingleTone? getInstance() {
    if (_instance == null) {
      _lockObj.synchronized(() {
        _instance ??= SingleTone();
      });
    }
    return _instance;
  }

  void addCounter() {
    counter++;
  }
}

void callSingleTone() {
  SingleTone s1= SingleTone.getInstance()!;
  s1.addCounter();
  print(s1.counter);


  SingleTone s2= SingleTone.getInstance()!;
  s2.addCounter();
  print(s2.counter);
}
