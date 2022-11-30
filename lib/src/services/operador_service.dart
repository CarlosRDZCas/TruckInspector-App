import 'dart:convert';

import 'package:image_picker/image_picker.dart';
import 'package:trailerinspector/src/models/models.dart';
import 'package:http/http.dart' as http;

import '../global/enviroment.dart';

class OperadorService {
  static Future<OperadorsResponse> getOperadores() async {
    final resp =
        await http.get(Uri.parse('${Enviroment.API_URL}/v1/getOperadors'));
    if (resp.statusCode == 200) {
      final operadoresResponse = OperadorsResponse.fromJson(resp.body);
      return operadoresResponse;
    } else {
      final operadoresResponse = OperadorsResponse(ok: false, operadors: []);
      return operadoresResponse;
    }
  }

  static Future<bool> postOperador(Operador body) async {
    final resp = await http.post(
        Uri.parse('${Enviroment.API_URL}/v1/postOperadors'),
        body: body.toJson(),
        headers: {'Content-Type': 'application/json'});
    if (resp.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  static Future<bool> postImageOperador(String path) async {
    if (path.isEmpty) {
      return true;
    }
    final request = http.MultipartRequest(
        "POST", Uri.parse('${Enviroment.API_URL}/v1/postImageOperador'));
    final headers = {"Content-type": "multipart/form-data"};
    final imageFile = XFile(path);

    request.files.add(http.MultipartFile(
        'image', imageFile.readAsBytes().asStream(), await imageFile.length(),
        filename: imageFile.path.split("/").last));
    request.headers.addAll(headers);
    final response = await request.send();
    http.Response res = await http.Response.fromStream(response);
    final resJson = jsonDecode(res.body);
    return resJson["ok"];
  }
}
