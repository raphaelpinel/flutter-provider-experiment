import 'package:flutter/material.dart';

class CountModel extends ChangeNotifier {
  int _count = 0;
  int get count => _count;
  int get count2 => _count * 2;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }
}
