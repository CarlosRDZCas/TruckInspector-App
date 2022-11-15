// To parse this JSON data, do
//
//     final AuthResponse = AuthResponseFromMap(jsonString);

import 'dart:convert';

import 'models.dart';

class AuthResponse {
  AuthResponse({
    required this.ok,
    required this.usuario,
    required this.token,
  });

  bool ok;
  User usuario;
  String token;

  factory AuthResponse.fromJson(String str) =>
      AuthResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AuthResponse.fromMap(Map<String, dynamic> json) => AuthResponse(
        ok: json["ok"],
        usuario: User.fromMap(json["usuario"]),
        token: json["token"],
      );

  Map<String, dynamic> toMap() => {
        "ok": ok,
        "usuario": usuario.toMap(),
        "token": token,
      };
}
