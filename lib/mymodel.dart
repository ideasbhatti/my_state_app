import 'package:flutter/cupertino.dart';

class Item with ChangeNotifier {
// Value Declear
  String meroValue = 'Hello';

// Method(Change Value)
  void changeValue() {
    meroValue == 'Hello' ? meroValue = 'Namaste' : meroValue = 'Hello';
    notifyListeners();
  }
}
