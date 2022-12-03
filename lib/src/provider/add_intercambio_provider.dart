import 'package:flutter/cupertino.dart';

class AddIntercambioProvider extends ChangeNotifier {
  
  int _currentindex = 0;
  int get currentindex => _currentindex;
  set currentindex(int value) {
    _currentindex = value;
    notifyListeners();
  }
}
