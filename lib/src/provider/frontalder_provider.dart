import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart ';

class FrontalDerechoProvider extends ChangeNotifier {
  FrontalDerechoProvider() {
    getDirectoryPath();
  }

  String _image = '';
  String get image => _image;
  set image(String value) {
    _image = value;
    notifyListeners();
  }

  bool? _lucesfrontales = false;
  bool? get lucesfrontales => _lucesfrontales;
  set lucesfrontales(bool? value) {
    _lucesfrontales = value;
    notifyListeners();
  }

  bool? _coples = false;
  bool? get coples => _coples;
  set coples(bool? value) {
    _coples = value;
    notifyListeners();
  }

  bool? _lineasdeaire = false;
  bool? get lineasdeaire => _lineasdeaire;
  set lineasdeaire(bool? value) {
    _lineasdeaire = value;
    notifyListeners();
  }

  bool? _gomitas = false;
  bool? get gomitas => _gomitas;
  set gomitas(bool? value) {
    _gomitas = value;
    notifyListeners();
  }

  bool? _mangueras = false;
  bool? get mangueras => _mangueras;
  set mangueras(bool? value) {
    _mangueras = value;
    notifyListeners();
  }

  bool? _quinta = false;
  bool? get quinta => _quinta;
  set quinta(bool? value) {
    _quinta = value;
    notifyListeners();
  }

  List<String> _danos = [];
  List<String> get danos => _danos;
  set danos(List<String> value) {
    _danos = value;
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
