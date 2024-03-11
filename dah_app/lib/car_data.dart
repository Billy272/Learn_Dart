import 'package:flutter/material.dart';

class CarData extends ChangeNotifier {
  double _speed = 0;

  double get speed => _speed;

  void updatedspeed(double newSpeed) {
    _speed = newSpeed;
    notifyListeners();
  }
}
