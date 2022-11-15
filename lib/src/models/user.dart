import 'dart:convert';

class User {
  User({
    required this.nombre,
    required this.usuario,
    required this.email,
    required this.sucursal,
    required this.puesto,
    required this.uid,
  });

  String nombre;
  String usuario;
  String email;
  String sucursal;
  String puesto;
  String uid;

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => User(
        nombre: json["nombre"],
        usuario: json["usuario"],
        email: json["email"],
        sucursal: json["sucursal"],
        puesto: json["puesto"],
        uid: json["uid"],
      );

  Map<String, dynamic> toMap() => {
        "nombre": nombre,
        "usuario": usuario,
        "email": email,
        "sucursal": sucursal,
        "puesto": puesto,
        "uid": uid,
      };
}
