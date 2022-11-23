
import 'dart:convert';

class Intercambio {
    Intercambio({
        required this.datos,
        required this.trailer,
        required this.llantas,
        required this.imagenes,
        required this.accesorios,
    });

    Datos datos;
    Trailer trailer;
    Llantas llantas;
    Imagenes imagenes;
    Map<String, bool> accesorios;

    factory Intercambio.fromJson(String str) => Intercambio.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Intercambio.fromMap(Map<String, dynamic> json) => Intercambio(
        datos: Datos.fromMap(json["datos"]),
        trailer: Trailer.fromMap(json["trailer"]),
        llantas: Llantas.fromMap(json["llantas"]),
        imagenes: Imagenes.fromMap(json["imagenes"]),
        accesorios: Map.from(json["accesorios"]).map((k, v) => MapEntry<String, bool>(k, v)),
    );

    Map<String, dynamic> toMap() => {
        "datos": datos.toMap(),
        "trailer": trailer.toMap(),
        "llantas": llantas.toMap(),
        "imagenes": imagenes.toMap(),
        "accesorios": Map.from(accesorios).map((k, v) => MapEntry<String, dynamic>(k, v)),
    };
}

class Datos {
    Datos({
        required this.eos,
        required this.fechaintercambio,
        required this.movimiento,
        required this.unidad,
        required this.placasunidad,
        required this.tipoplacas,
        required this.operador,
        required this.linea,
        required this.cliente,
        required this.origen,
        required this.destino,
        required this.comentarios,
        required this.folio,
    });

    String eos;
    DateTime fechaintercambio;
    String movimiento;
    int unidad;
    String placasunidad;
    String tipoplacas;
    String operador;
    String linea;
    String cliente;
    String origen;
    String destino;
    String comentarios;
    int folio;

    factory Datos.fromJson(String str) => Datos.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Datos.fromMap(Map<String, dynamic> json) => Datos(
        eos: json["eos"],
        fechaintercambio: DateTime.parse(json["fechaintercambio"]),
        movimiento: json["movimiento"],
        unidad: json["unidad"],
        placasunidad: json["placasunidad"],
        tipoplacas: json["tipoplacas"],
        operador: json["operador"],
        linea: json["linea"],
        cliente: json["cliente"],
        origen: json["origen"],
        destino: json["destino"],
        comentarios: json["comentarios"],
        folio: json["folio"],
    );

    Map<String, dynamic> toMap() => {
        "eos": eos,
        "fechaintercambio": fechaintercambio.toIso8601String(),
        "movimiento": movimiento,
        "unidad": unidad,
        "placasunidad": placasunidad,
        "tipoplacas": tipoplacas,
        "operador": operador,
        "linea": linea,
        "cliente": cliente,
        "origen": origen,
        "destino": destino,
        "comentarios": comentarios,
        "folio": folio,
    };
}

class Imagenes {
    Imagenes({
        required this.frontalderecho,
        required this.lateralderecho,
        required this.puertas,
        required this.sello,
        required this.lateralizquierdo,
        required this.frontalizquierdo,
        required this.llantaseje1,
        required this.llantaseje2,
        required this.daos,
    });

    String frontalderecho;
    String lateralderecho;
    String puertas;
    String sello;
    String lateralizquierdo;
    String frontalizquierdo;
    List<String> llantaseje1;
    List<String> llantaseje2;
    List<String> daos;

    factory Imagenes.fromJson(String str) => Imagenes.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Imagenes.fromMap(Map<String, dynamic> json) => Imagenes(
        frontalderecho: json["frontalderecho"],
        lateralderecho: json["lateralderecho"],
        puertas: json["puertas"],
        sello: json["sello"],
        lateralizquierdo: json["lateralizquierdo"],
        frontalizquierdo: json["frontalizquierdo"],
        llantaseje1: List<String>.from(json["llantaseje1"].map((x) => x)),
        llantaseje2: List<String>.from(json["llantaseje2"].map((x) => x)),
        daos: List<String>.from(json["daños"].map((x) => x)),
    );

    Map<String, dynamic> toMap() => {
        "frontalderecho": frontalderecho,
        "lateralderecho": lateralderecho,
        "puertas": puertas,
        "sello": sello,
        "lateralizquierdo": lateralizquierdo,
        "frontalizquierdo": frontalizquierdo,
        "llantaseje1": List<dynamic>.from(llantaseje1.map((x) => x)),
        "llantaseje2": List<dynamic>.from(llantaseje2.map((x) => x)),
        "daños": List<dynamic>.from(daos.map((x) => x)),
    };
}

class Llantas {
    Llantas({
        required this.posicion1,
        required this.posicion2,
        required this.posicion3,
        required this.posicion4,
        required this.posicion5,
        required this.posicion6,
        required this.posicion7,
        required this.posicion8,
    });

    Posicion posicion1;
    Posicion posicion2;
    Posicion posicion3;
    Posicion posicion4;
    Posicion posicion5;
    Posicion posicion6;
    Posicion posicion7;
    Posicion posicion8;

    factory Llantas.fromJson(String str) => Llantas.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Llantas.fromMap(Map<String, dynamic> json) => Llantas(
        posicion1: Posicion.fromMap(json["posicion1"]),
        posicion2: Posicion.fromMap(json["posicion2"]),
        posicion3: Posicion.fromMap(json["posicion3"]),
        posicion4: Posicion.fromMap(json["posicion4"]),
        posicion5: Posicion.fromMap(json["posicion5"]),
        posicion6: Posicion.fromMap(json["posicion6"]),
        posicion7: Posicion.fromMap(json["posicion7"]),
        posicion8: Posicion.fromMap(json["posicion8"]),
    );

    Map<String, dynamic> toMap() => {
        "posicion1": posicion1.toMap(),
        "posicion2": posicion2.toMap(),
        "posicion3": posicion3.toMap(),
        "posicion4": posicion4.toMap(),
        "posicion5": posicion5.toMap(),
        "posicion6": posicion6.toMap(),
        "posicion7": posicion7.toMap(),
        "posicion8": posicion8.toMap(),
    };
}

class Posicion {
    Posicion({
        required this.marca,
        required this.estado,
        required this.profundidad,
    });

    String marca;
    String estado;
    int profundidad;

    factory Posicion.fromJson(String str) => Posicion.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Posicion.fromMap(Map<String, dynamic> json) => Posicion(
        marca: json["marca"],
        estado: json["estado"],
        profundidad: json["profundidad"],
    );

    Map<String, dynamic> toMap() => {
        "marca": marca,
        "estado": estado,
        "profundidad": profundidad,
    };
}

class Trailer {
    Trailer({
        required this.tipo,
        required this.numerotrailer,
        required this.placastrailer,
        required this.estadoprocedencia,
        required this.propietario,
        required this.chasis,
        required this.cajon,
        required this.bloqueado,
        required this.apto,
        required this.cargado,
        required this.sellos,
    });

    String tipo;
    String numerotrailer;
    String placastrailer;
    String estadoprocedencia;
    String propietario;
    String chasis;
    int cajon;
    bool bloqueado;
    bool apto;
    bool cargado;
    String sellos;

    factory Trailer.fromJson(String str) => Trailer.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Trailer.fromMap(Map<String, dynamic> json) => Trailer(
        tipo: json["tipo"],
        numerotrailer: json["numerotrailer"],
        placastrailer: json["placastrailer"],
        estadoprocedencia: json["estadoprocedencia"],
        propietario: json["propietario"],
        chasis: json["chasis"],
        cajon: json["cajon"],
        bloqueado: json["bloqueado"],
        apto: json["apto"],
        cargado: json["cargado"],
        sellos: json["sellos"],
    );

    Map<String, dynamic> toMap() => {
        "tipo": tipo,
        "numerotrailer": numerotrailer,
        "placastrailer": placastrailer,
        "estadoprocedencia": estadoprocedencia,
        "propietario": propietario,
        "chasis": chasis,
        "cajon": cajon,
        "bloqueado": bloqueado,
        "apto": apto,
        "cargado": cargado,
        "sellos": sellos,
    };
}
