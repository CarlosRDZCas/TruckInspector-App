import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  GlobalKey<FormState> frmKey = GlobalKey<FormState>();

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  String _user = '';
  String get user => _user;
  set user(String value) {
    _user = value;
    notifyListeners();
  }

  String _password = '';
  String get password => _password;
  set password(String value) {
    _password = value;
    notifyListeners();
  }

  isValid() {
    return frmKey.currentState?.validate();
  } 
}
