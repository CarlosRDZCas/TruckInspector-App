import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart ';

class PuertasProvider extends ChangeNotifier {
  PuertasProvider() {
    getDirectoryPath();
  }

  List<String> _danos = [];
  List<String> get danos => _danos;
  set danos(List<String> value) {
    _danos = value;
    notifyListeners();
  }

  String _image = '';
  String get image => _image;
  set image(String value) {
    _image = value;
    notifyListeners();
  }

  bool? _lucestraseras = false;
  bool? get lucestraseras => _lucestraseras;
  set lucestraseras(bool? value) {
    _lucestraseras = value;
    notifyListeners();
  }

  bool? _estribos = false;
  bool? get estribos => _estribos;
  set estribos(bool? value) {
    _estribos = value;
    notifyListeners();
  }

  bool? _bisagras = false;
  bool? get bisagras => _bisagras;
  set bisagras(bool? value) {
    _bisagras = value;
    notifyListeners();
  }

  bool? _lucesalto = false;
  bool? get lucesalto => _lucesalto;
  set lucesalto(bool? value) {
    _lucesalto = value;
    notifyListeners();
  }

  bool? _ganchos = false;
  bool? get ganchos => _ganchos;
  set ganchos(bool? value) {
    _ganchos = value;
    notifyListeners();
  }

  bool? _luzplaca = false;
  bool? get luzplaca => _luzplaca;
  set luzplaca(bool? value) {
    _luzplaca = value;
    notifyListeners();
  }

  bool? _cerrojos = false;
  bool? get cerrojos => _cerrojos;
  set cerrojos(bool? value) {
    _cerrojos = value;
    notifyListeners();
  }

  bool? _sello = false;
  bool? get sello => _sello;
  set sello(bool? value) {
    _sello = value;
    notifyListeners();
  }

  List<String> _imgsellos = [];
  List<String> get imgsellos => _imgsellos;
  set imgsellos(List<String> value) {
    _imgsellos = value;
    notifyListeners();
  }

  List<String> _numerosellos = [];
  List<String> get numerosellos => _numerosellos;
  set numerosellos(List<String> value) {
    _numerosellos = value;
    notifyListeners();
  }

  String _directoryPath = '';
  String get directoryPath => _directoryPath;
  set directoryPath(String value) {
    _directoryPath = value;
    notifyListeners();
  }

  getDirectoryPath() async {
    directoryPath =
        '${(await getApplicationDocumentsDirectory()).path}\\EditImages';
  }
}
