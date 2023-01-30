import 'package:flutter/cupertino.dart';

class DatosProvider extends ChangeNotifier {
  bool _eos = false;
  bool get eos => _eos;
  set eos(bool value) {
    _eos = value;
    notifyListeners();
  }

  String? _tipoviaje;
  String? get tipoviaje => _tipoviaje;
  set tipoviaje(String? value) {
    _tipoviaje = value;
    notifyListeners();
  }

  String _unidad = '';
  String get unidad => _unidad;
  set unidad(String value) {
    _unidad = value;
    notifyListeners();
  }

  String _placas = '';
  String get placas => _placas;
  set placas(String value) {
    _placas = value;
    notifyListeners();
  }

  String? _tipoplaca;
  String? get tipoplaca => _tipoplaca;
  set tipoplaca(String? value) {
    _tipoplaca = value;
    notifyListeners();
  }

  String _operador = '';
  String get operador => _operador;
  set operador(String value) {
    _operador = value;
    notifyListeners();
  }

  String _lineatransportista = '';
  String get lineatransportista => _lineatransportista;
  set lineatransportista(String value) {
    _lineatransportista = value;
    notifyListeners();
  }

    String _cliente = '';
  String get cliente => _cliente;
  set cliente(String value) {
    _cliente = value;
    notifyListeners();
  }
    String _origen = '';
  String get origen => _origen;
  set origen(String value) {
    _origen = value;
    notifyListeners();
  }
    String _destino = '';
  String get destino => _destino;
  set destino(String value) {
    _destino = value;
    notifyListeners();
  }
}
