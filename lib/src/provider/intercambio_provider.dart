import 'package:flutter/cupertino.dart';
import 'package:trailerinspector/src/models/models.dart';
import 'package:trailerinspector/src/services/services.dart';

class IntercambioProvider extends ChangeNotifier {
  List<Intercambio> _intercambio = [];
  List<Intercambio> get intercambio => _intercambio;
  set intercambio(List<Intercambio> value) {
    _intercambio = value;
    notifyListeners();
  }

    List<Intercambio> _intercambioquery = [];
  List<Intercambio> get intercambioquery => _intercambioquery;
  set intercambioquery(List<Intercambio> value) {
    _intercambioquery = value;
    notifyListeners();
  }

  int _limit = 80;
  int get limit => _limit;
  set limit(int value) {
    _limit = value;
    notifyListeners();
  }

  IntercambioProvider() {
    getIntercambios();
  }

  Future<List<Intercambio>> getIntercambios() async {
    final intercam = await IntercambioService.getIntercambios(limit);
    intercambio = intercam.intercambio;
    return intercambio;
  }

  Future<List<Intercambio>> getIntercambioBy(String by, String query) async {
    switch (by) {
      case 'Unidad':
        final intercam =
            await IntercambioService.getIntercambiosByUnidad(query);
        intercambioquery = intercam.intercambio;
        return intercambioquery;

      case 'Folio':
        final intercam = await IntercambioService.getIntercambiosByFolio(query);
        intercambioquery = intercam.intercambio;
        return intercambioquery;

      case 'Fecha':
        final intercam = await IntercambioService.getIntercambiosByFecha(query);
        intercambioquery = intercam.intercambio;
        return intercambioquery;

      case 'Caja':
        final intercam =
            await IntercambioService.getIntercambiosByTrailer(query);
        intercambioquery = intercam.intercambio;
        return intercambioquery;

      default:
        return [];
    }
  }
}
