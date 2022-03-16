
import 'package:flutter/foundation.dart';

class MySizer with ChangeNotifier{
  double _theSize = 0.5;

  double get theSize => _theSize;

  set theSize(double newValue){
    _theSize = newValue;
    notifyListeners();
  }
}