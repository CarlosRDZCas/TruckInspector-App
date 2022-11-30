import 'package:flutter/cupertino.dart';
import 'package:trailerinspector/src/models/models.dart';
import 'package:trailerinspector/src/services/services.dart';
import 'package:path_provider/path_provider.dart ';
import 'package:path/path.dart' as path;

class OperadorProvider extends ChangeNotifier {
  GlobalKey<FormState> frmKey = GlobalKey<FormState>();

  String _image = '';
  String get image => _image;
  set image(String value) {
    _image = value;
    notifyListeners();
  }

  String _directoryPath = '';
  String get directoryPath => _directoryPath;
  set directoryPath(String value) {
    _directoryPath = value;
    notifyListeners();
  }

  final TextEditingController _controllerOperador = TextEditingController();
  TextEditingController get controllerOperador => _controllerOperador;
  set controllerOperador(TextEditingController value) {
    _controllerOperador.text = value.text;
    notifyListeners();
  }

  String _searchoperador = '';
  String get searchoperador => _searchoperador;
  set searchoperador(String value) {
    _searchoperador = value;
    notifyListeners();
  }

  List<Operador> _operadores = [];
  List<Operador> get operadores => _operadores;
  set operadores(List<Operador> value) {
    _operadores = value;
    notifyListeners();
  }

  List<Operador> _operadoressuggestions = [];
  List<Operador> get operadoressuggestions => _operadoressuggestions;
  set operadoressuggestions(List<Operador> value) {
    _operadoressuggestions = value;
    notifyListeners();
  }

  Operador _operador =
      Operador(nombre: '', rfc: '', linea: '', scac: '', image: '');
  Operador get operador => _operador;
  set operador(Operador value) {
    _operador = value;
    notifyListeners();
  }

  OperadorProvider() {
    getOperadores();
    getDirectoryPath();
  }

  getDirectoryPath() async {
    directoryPath =
        '${(await getApplicationDocumentsDirectory()).path}\\EditImages';
  }

  getOperadores() async {
    final oprs = await OperadorService.getOperadores();
    operadores = oprs.operadors;
    operadoressuggestions = oprs.operadors;
  }

  Future<bool> postOperador(Operador body) async {
    final resp = await OperadorService.postOperador(body);
    return resp;
  }

  Future<bool> postImageOperador(String name) async {
    if (name.isEmpty) {
      return true;
    }
    final newpath = path.join(directoryPath, name);
    final resp = await OperadorService.postImageOperador(newpath);
    return resp;
  }

  void searchOperador(String query) {
    operadoressuggestions = operadores.where((operador) {
      final nombreOperador = operador.nombre.toLowerCase();
      final input = query.toLowerCase();
      return nombreOperador.contains(input);
    }).toList();
  }
}
