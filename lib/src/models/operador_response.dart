// To parse this JSON data, do
//
//     final operadorsResponse = operadorsResponseFromMap(jsonString);

import 'dart:convert';

import 'models.dart';

class OperadorsResponse {
  OperadorsResponse({
    required this.ok,
    required this.operadors,
  });

  bool ok;
  List<Operador> operadors;

  factory OperadorsResponse.fromJson(String str) =>
      OperadorsResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OperadorsResponse.fromMap(Map<String, dynamic> json) =>
      OperadorsResponse(
        ok: json["ok"],
        operadors: List<Operador>.from(
            json["operadors"].map((x) => Operador.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "ok": ok,
        "operadors": List<dynamic>.from(operadors.map((x) => x.toMap())),
      };
      
}
