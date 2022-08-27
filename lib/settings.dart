import 'package:flutter/material.dart';

class MySettings extends ChangeNotifier {
  String text = 'bhasdasd';
  Color color = Colors.red;

  void changeText() {
    if (text == 'Hello') {
      text = 'World';
    } else {
      text = 'Hello';
    }
    notifyListeners();
  }

  void changeColor() {
    if (color == Colors.red) {
      color = Colors.green;
    } else {
      color = Colors.red;
    }
    notifyListeners();
  }

  set newColor(Color newColor) {
    color = newColor;
    notifyListeners();
  }
}
