import 'dart:convert';

import 'models.dart';

class IntercambioResponse {
  IntercambioResponse({
    required this.ok,
    required this.intercambio,
  });

  bool ok;
  List<Intercambio> intercambio;

  factory IntercambioResponse.fromJson(String str) =>
      IntercambioResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory IntercambioResponse.fromMap(Map<String, dynamic> json) =>
      IntercambioResponse(
        ok: json["ok"],
        intercambio: List<Intercambio>.from(
            json["intercambio"].map((x) => Intercambio.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "ok": ok,
        "intercambio": List<dynamic>.from(intercambio.map((x) => x.toMap())),
      };
}
