import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart ';

class LateralDerechoProvider extends ChangeNotifier {
  LateralDerechoProvider() {
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

  String _imagellantas = '';
  String get imagellantas => _imagellantas;
  set imagellantas(String value) {
    _imagellantas = value;
    notifyListeners();
  }

  List<String> _danosllantas = [];
  List<String> get danosllantas => _danosllantas;
  set danosllantas(List<String> value) {
    _danosllantas = value;
    notifyListeners();
  }

  bool? _luceslaterales = false;
  bool? get luceslaterales => _luceslaterales;
  set luceslaterales(bool? value) {
    _luceslaterales = value;
    notifyListeners();
  }

  bool? _pisoremolque = false;
  bool? get pisoremolque => _pisoremolque;
  set pisoremolque(bool? value) {
    _pisoremolque = value;
    notifyListeners();
  }

  bool? _lucesreflejantes = false;
  bool? get lucesreflejantes => _lucesreflejantes;
  set lucesreflejantes(bool? value) {
    _lucesreflejantes = value;
    notifyListeners();
  }

  bool? _zoqueteras = false;
  bool? get zoqueteras => _zoqueteras;
  set zoqueteras(bool? value) {
    _zoqueteras = value;
    notifyListeners();
  }

  bool? _manivela = false;
  bool? get manivela => _manivela;
  set manivela(bool? value) {
    _manivela = value;
    notifyListeners();
  }

  bool? _exteriorchasis = false;
  bool? get exteriorchasis => _exteriorchasis;
  set exteriorchasis(bool? value) {
    _exteriorchasis = value;
    notifyListeners();
  }

  bool? _patines = false;
  bool? get patines => _patines;
  set patines(bool? value) {
    _patines = value;
    notifyListeners();
  }

  String _directoryPath = '';
  String get directoryPath => _directoryPath;
  set directoryPath(String value) {
    _directoryPath = value;
    notifyListeners();
  }

  String? _marcallanta1;
  String? get marcallanta1 => _marcallanta1;
  set marcallanta1(String? value) {
    _marcallanta1 = value;
    notifyListeners();
  }

  String _estadollanta1 = '';
  String get estadollanta1 => _estadollanta1;
  set estadollanta1(String value) {
    _estadollanta1 = value;
    notifyListeners();
  }

  String _profundidadllanta1 = '';
  String get profundidadllanta1 => _profundidadllanta1;
  set profundidadllanta1(String value) {
    _profundidadllanta1 = value;
    notifyListeners();
  }

  String? _marcallanta2;
  String? get marcallanta2 => _marcallanta2;
  set marcallanta2(String? value) {
    _marcallanta2 = value;
    notifyListeners();
  }

  String _estadollanta2 = '';
  String get estadollanta2 => _estadollanta2;
  set estadollanta2(String value) {
    _estadollanta2 = value;
    notifyListeners();
  }

  String _profundidadllanta2 = '';
  String get profundidadllanta2 => _profundidadllanta2;
  set profundidadllanta2(String value) {
    _profundidadllanta2 = value;
    notifyListeners();
  }

  String? _marcallanta5;
  String? get marcallanta5 => _marcallanta5;
  set marcallanta5(String? value) {
    _marcallanta5 = value;
    notifyListeners();
  }

  String _estadollanta5 = '';
  String get estadollanta5 => _estadollanta5;
  set estadollanta5(String value) {
    _estadollanta5 = value;
    notifyListeners();
  }

  String _profundidadllanta5 = '';
  String get profundidadllanta5 => _profundidadllanta5;
  set profundidadllanta5(String value) {
    _profundidadllanta5 = value;
    notifyListeners();
  }

  String? _marcallanta6;
  String? get marcallanta6 => _marcallanta6;
  set marcallanta6(String? value) {
    _marcallanta6 = value;
    notifyListeners();
  }

  String _estadollanta6 = '';
  String get estadollanta6 => _estadollanta6;
  set estadollanta6(String value) {
    _estadollanta6 = value;
    notifyListeners();
  }

  String _profundidadllanta6 = '';
  String get profundidadllanta6 => _profundidadllanta6;
  set profundidadllanta6(String value) {
    _profundidadllanta6 = value;
    notifyListeners();
  }

  getDirectoryPath() async {
    directoryPath =
        '${(await getApplicationDocumentsDirectory()).path}\\EditImages';
  }
}
