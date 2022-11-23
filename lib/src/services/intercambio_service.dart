import 'package:trailerinspector/src/models/models.dart';
import 'package:http/http.dart' as http;

import '../global/enviroment.dart';

class IntercambioService {
  static Future<IntercambioResponse> getIntercambios(int limit) async {
    final resp = await http.get(
        Uri.parse('${Enviroment.API_URL}/v1/getIntercambios?limit=$limit'));
    if (resp.statusCode == 200) {
      final intercambiosResponse = IntercambioResponse.fromJson(resp.body);
      return intercambiosResponse;
    } else {
      final intercam = IntercambioResponse(ok: false, intercambio: []);
      return intercam;
    }
  }

  static Future<IntercambioResponse> getIntercambiosByFolio(
      String query) async {
    final resp = await http.get(
        Uri.parse('${Enviroment.API_URL}/v1/getIntercambiosByFolio/$query'));
    if (resp.statusCode == 200) {
      final intercambiosResponse = IntercambioResponse.fromJson(resp.body);
      return intercambiosResponse;
    } else {
      final intercam = IntercambioResponse(ok: false, intercambio: []);
      return intercam;
    }
  }

  static Future<IntercambioResponse> getIntercambiosByUnidad(
      String query) async {
    final resp = await http.get(
        Uri.parse('${Enviroment.API_URL}/v1/getIntercambiosByUnidad/$query'));
    if (resp.statusCode == 200) {
      final intercambiosResponse = IntercambioResponse.fromJson(resp.body);
      return intercambiosResponse;
    } else {
      final intercam = IntercambioResponse(ok: false, intercambio: []);
      return intercam;
    }
  }

  static Future<IntercambioResponse> getIntercambiosByFecha(
      String query) async {
    final resp = await http.get(
        Uri.parse('${Enviroment.API_URL}/v1/getIntercambiosByFecha/$query'));
    if (resp.statusCode == 200) {
      final intercambiosResponse = IntercambioResponse.fromJson(resp.body);
      return intercambiosResponse;
    } else {
      final intercam = IntercambioResponse(ok: false, intercambio: []);
      return intercam;
    }
  }

  static Future<IntercambioResponse> getIntercambiosByTrailer(
      String query) async {
    final resp = await http.get(
        Uri.parse('${Enviroment.API_URL}/v1/getIntercambiosByTrailer/$query'));
    if (resp.statusCode == 200) {
      final intercambiosResponse = IntercambioResponse.fromJson(resp.body);
      return intercambiosResponse;
    } else {
      final intercam = IntercambioResponse(ok: false, intercambio: []);
      return intercam;
    }
  }
}
