import 'dart:convert';

class Operador {
  Operador({
    required this.nombre,
    required this.rfc,
    required this.linea,
    required this.scac,
    required this.image,
  });

  String nombre;
  String rfc;
  String linea;
  String scac;
  String image;

  factory Operador.fromJson(String str) => Operador.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Operador.fromMap(Map<String, dynamic> json) => Operador(
        nombre: json["nombre"],
        rfc: json["rfc"],
        linea: json["linea"],
        scac: json["scac"],
        image: json["image"],
      );

  Map<String, dynamic> toMap() => {
        "nombre": nombre,
        "rfc": rfc,
        "linea": linea,
        "scac": scac,
        "image": image,
      };
}
