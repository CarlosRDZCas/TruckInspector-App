import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:trailerinspector/src/models/models.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../global/enviroment.dart';

class AuthService with ChangeNotifier {
  User? usuario;
  bool _autenticando = false;

  bool get autenticando => _autenticando;

  set autenticando(bool valor) {
    _autenticando = valor;
    notifyListeners();
  }

  final _storage = const FlutterSecureStorage();

  static Future<String?> getToken() async {
    const storage = FlutterSecureStorage();
    final token = await storage.read(key: 'token');
    return token;
  }

  static Future<void> deleteToken() async {
    const storage = FlutterSecureStorage();
    await storage.delete(key: 'token');
  }

  Future<bool> login(String user, String pass) async {
    final data = {'usuario': user, 'password': pass};
    final resp = await http.post(Uri.parse('${Enviroment.API_URL}/v1/login/'),
        body: jsonEncode(data), headers: {'Content-Type': 'application/json'});
    if (resp.statusCode == 200) {
      final loginResponse = AuthResponse.fromJson(resp.body);
      usuario = loginResponse.usuario;
      await guardarToken(loginResponse.token);
      autenticando = false;
      return true;
    } else {
      autenticando = false;
      return false;
    }
  }

  Future<bool> isLoggedIn() async {
    final token = await _storage.read(key: 'token');
    if (token != null) {
      final resp = await http
          .get(Uri.parse('${Enviroment.API_URL}/v1/login/renew'), headers: {
        'Content-Type': 'application/json',
        'x-token': token,
      });
      if (resp.statusCode == 200) {
        final loginResponse = AuthResponse.fromJson(resp.body);
        usuario = loginResponse.usuario;
        await guardarToken(loginResponse.token);
        return true;
      } else {
        logOut();
        return false;
      }
    } else {
      logOut();
      return false;
    }
  }

  guardarToken(String token) async {
    return await _storage.write(key: 'token', value: token);
  }

  logOut() async {
    await _storage.delete(key: 'token');
  }
}
