import 'package:flutter/cupertino.dart';

class CajaProvider extends ChangeNotifier {
  String? _tipocaja;
  String? get tipocaja => _tipocaja;
  set tipocaja(String? value) {
    _tipocaja = value;
    notifyListeners();
  }

  String _caja = '';
  String get caja => _caja;
  set caja(String value) {
    _caja = value;
    notifyListeners();
  }

  String _placas = '';
  String get placas => _placas;
  set placas(String value) {
    _placas = value;
    notifyListeners();
  }

  String _estadoprocedencia = '';
  String get estadoprocedencia => _estadoprocedencia;
  set estadoprocedencia(String value) {
    _estadoprocedencia = value;
    notifyListeners();
  }

  String? _propietario;
  String? get propietario => _propietario;
  set propietario(String? value) {
    _propietario = value;
    notifyListeners();
  }

  String _chasis = '';
  String get chasis => _chasis;
  set chasis(String value) {
    _chasis = value;
    notifyListeners();
  }

  bool _bloqueado = false;
  bool get bloqueado => _bloqueado;
  set bloqueado(bool value) {
    _bloqueado = value;
    notifyListeners();
  }

  bool _cargado = false;
  bool get cargado => _cargado;
  set cargado(bool value) {
    _cargado = value;
    notifyListeners();
  }

  bool _apto = false;
  bool get apto => _apto;
  set apto(bool value) {
    _apto = value;
    notifyListeners();
  }
}
