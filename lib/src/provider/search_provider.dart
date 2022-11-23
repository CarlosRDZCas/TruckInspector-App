import 'package:flutter/cupertino.dart';

enum Opciones { Unidad, Carro, Fecha, Folio }

class SearchProvider extends ChangeNotifier {
  List<Opciones> _opciones = Opciones.values;
  List<Opciones> get opciones => _opciones;
  set opciones(List<Opciones> value) {
    _opciones = value;
  }

  String? _opcion = 'Folio';
  String? get opcion => _opcion;
  set opcion(String? value) {
    _opcion = value;
    notifyListeners();
  }
}
