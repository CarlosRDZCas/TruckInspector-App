import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart ';

class AddIntercambioProvider extends ChangeNotifier {
  AddIntercambioProvider() {
    getDirectoryPath();
  }

  List<String> _danosimgs = [];
  List<String> get danosimgs => _danosimgs;
  set danosimgs(List<String> value) {
    _danosimgs = value;
    notifyListeners();
  }

  void addDanoImg(String element) {
    danosimgs.add(element);
    notifyListeners();
  }

  void deleteDanoImg(int index) {
    danosimgs.removeAt(index);
    notifyListeners();
  }

  
  void deleteLastDanoImg() {
    danosimgs.removeLast();
    notifyListeners();
  }

  ScrollController _controller = ScrollController();
  ScrollController get controller => _controller;
  set controller(ScrollController value) {
    _controller = value;
    notifyListeners();
  }

  int _currentindex = 0;
  int get currentindex => _currentindex;
  set currentindex(int value) {
    _currentindex = value;
    notifyListeners();
  }

  bool _addimage1 = true;
  bool get addimage1 => _addimage1;
  set addimage1(bool value) {
    _addimage1 = value;
    notifyListeners();
  }

  String _image1 = '';
  String get image1 => _image1;
  set image1(String value) {
    _image1 = value;
    notifyListeners();
  }

  bool _addimage2 = false;
  bool get addimage2 => _addimage2;
  set addimage2(bool value) {
    _addimage2 = value;
    notifyListeners();
  }

  String _image2 = '';
  String get image2 => _image2;
  set image2(String value) {
    _image2 = value;
    notifyListeners();
  }

  bool _addimage3 = false;
  bool get addimage3 => _addimage3;
  set addimage3(bool value) {
    _addimage3 = value;
    notifyListeners();
  }

  String _image3 = '';
  String get image3 => _image3;
  set image3(String value) {
    _image3 = value;
    notifyListeners();
  }

  bool _addimage4 = false;
  bool get addimage4 => _addimage4;
  set addimage4(bool value) {
    _addimage4 = value;
    notifyListeners();
  }

  String _image4 = '';
  String get image4 => _image4;
  set image4(String value) {
    _image4 = value;
    notifyListeners();
  }

  bool _addimage5 = false;
  bool get addimage5 => _addimage5;
  set addimage5(bool value) {
    _addimage5 = value;
    notifyListeners();
  }

  String _image5 = '';
  String get image5 => _image5;
  set image5(String value) {
    _image5 = value;
    notifyListeners();
  }

  bool _addimage6 = false;
  bool get addimage6 => _addimage6;
  set addimage6(bool value) {
    _addimage6 = value;
    notifyListeners();
  }

  String _image6 = '';
  String get image6 => _image6;
  set image6(String value) {
    _image6 = value;
    notifyListeners();
  }

  bool _addimage7 = false;
  bool get addimage7 => _addimage7;
  set addimage7(bool value) {
    _addimage7 = value;
    notifyListeners();
  }

  String _image7 = '';
  String get image7 => _image7;
  set image7(String value) {
    _image7 = value;
    notifyListeners();
  }

  bool _addimage8 = false;
  bool get addimage8 => _addimage8;
  set addimage8(bool value) {
    _addimage8 = value;
    notifyListeners();
  }

  String _image8 = '';
  String get image8 => _image8;
  set image8(String value) {
    _image8 = value;
    notifyListeners();
  }

  String _directoryPath = '';
  String get directoryPath => _directoryPath;
  set directoryPath(String value) {
    _directoryPath = value;
    notifyListeners();
  }

  String _frontalDer = '';
  String get frontalDer => _frontalDer;
  set frontalDer(String value) {
    _frontalDer = value;
    notifyListeners();
  }

  String _lateralDer = '';
  String get lateralDer => _lateralDer;
  set lateralDer(String value) {
    _lateralDer = value;
    notifyListeners();
  }

  String _puertas = '';
  String get puertas => _puertas;
  set puertas(String value) {
    _puertas = value;
    notifyListeners();
  }

  String _sello = '';
  String get sello => _sello;
  set sello(String value) {
    _sello = value;
    notifyListeners();
  }

  String _lateralIzq = '';
  String get lateralIzq => _lateralIzq;
  set lateralIzq(String value) {
    _lateralIzq = value;
    notifyListeners();
  }

  String _frontalIzq = '';
  String get frontalIzq => _frontalIzq;
  set frontalIzq(String value) {
    _frontalIzq = value;
    notifyListeners();
  }

  getDirectoryPath() async {
    directoryPath =
        '${(await getApplicationDocumentsDirectory()).path}\\EditImages';
  }
}
