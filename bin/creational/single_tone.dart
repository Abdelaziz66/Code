
import 'package:synchronized/synchronized.dart';

class SingleTone {
  int counter = 0;
  static SingleTone? _instance;
  static final _lockObj = Lock();

  SingleTone() {}

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