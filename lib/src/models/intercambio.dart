// To parse this JSON data, do
//
//     final intercambio = intercambioFromMap(jsonString);

import 'dart:convert';


class Intercambio {
    Intercambio({
        required this.datos,
        required this.trailer,
        required this.frontalderecho,
        required this.lateralderecho,
        required this.puerta,
        required this.lateralizquierdo,
    });

    Datos datos;
    Trailer trailer;
    Frontalderecho frontalderecho;
    Lateralderecho lateralderecho;
    Puerta puerta;
    Lateralizquierdo lateralizquierdo;

    factory Intercambio.fromJson(String str) => Intercambio.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Intercambio.fromMap(Map<String, dynamic> json) => Intercambio(
        datos: Datos.fromMap(json["datos"]),
        trailer: Trailer.fromMap(json["trailer"]),
        frontalderecho: Frontalderecho.fromMap(json["frontalderecho"]),
        lateralderecho: Lateralderecho.fromMap(json["lateralderecho"]),
        puerta: Puerta.fromMap(json["puerta"]),
        lateralizquierdo: Lateralizquierdo.fromMap(json["lateralizquierdo"]),
    );

    Map<String, dynamic> toMap() => {
        "datos": datos.toMap(),
        "trailer": trailer.toMap(),
        "frontalderecho": frontalderecho.toMap(),
        "lateralderecho": lateralderecho.toMap(),
        "puerta": puerta.toMap(),
        "lateralizquierdo": lateralizquierdo.toMap(),
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

class Frontalderecho {
    Frontalderecho({
        required this.imgfrontalderecho,
        required this.daos,
        required this.lucesfrente,
        required this.lineasdeaire,
        required this.mangueras,
        required this.quintarueda,
        required this.gomas,
        required this.coples,
    });

    String imgfrontalderecho;
    List<String> daos;
    bool lucesfrente;
    bool lineasdeaire;
    bool mangueras;
    bool quintarueda;
    bool gomas;
    bool coples;

    factory Frontalderecho.fromJson(String str) => Frontalderecho.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Frontalderecho.fromMap(Map<String, dynamic> json) => Frontalderecho(
        imgfrontalderecho: json["imgfrontalderecho"],
        daos: List<String>.from(json["daños"].map((x) => x)),
        lucesfrente: json["lucesfrente"],
        lineasdeaire: json["lineasdeaire"],
        mangueras: json["mangueras"],
        quintarueda: json["quintarueda"],
        gomas: json["gomas"],
        coples: json["coples"],
    );

    Map<String, dynamic> toMap() => {
        "imgfrontalderecho": imgfrontalderecho,
        "daños": List<dynamic>.from(daos.map((x) => x)),
        "lucesfrente": lucesfrente,
        "lineasdeaire": lineasdeaire,
        "mangueras": mangueras,
        "quintarueda": quintarueda,
        "gomas": gomas,
        "coples": coples,
    };
}

class Lateralderecho {
    Lateralderecho({
        required this.imglateralderecho,
        required this.daos,
        required this.luceslaterales,
        required this.lucesreflejantes,
        required this.manivela,
        required this.patines,
        required this.zoqueteras,
        required this.pisoremolque,
        required this.exteriorchasis,
        required this.imgllantaseje1,
        required this.daosllantaseje1,
        required this.posicion1,
        required this.posicion2,
        required this.posicion5,
        required this.posicion6,
    });

    String imglateralderecho;
    List<String> daos;
    bool luceslaterales;
    bool lucesreflejantes;
    bool manivela;
    bool patines;
    bool zoqueteras;
    bool pisoremolque;
    bool exteriorchasis;
    String imgllantaseje1;
    List<String> daosllantaseje1;
    Posicion posicion1;
    Posicion posicion2;
    Posicion posicion5;
    Posicion posicion6;

    factory Lateralderecho.fromJson(String str) => Lateralderecho.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Lateralderecho.fromMap(Map<String, dynamic> json) => Lateralderecho(
        imglateralderecho: json["imglateralderecho"],
        daos: List<String>.from(json["daños"].map((x) => x)),
        luceslaterales: json["luceslaterales"],
        lucesreflejantes: json["lucesreflejantes"],
        manivela: json["manivela"],
        patines: json["patines"],
        zoqueteras: json["zoqueteras"],
        pisoremolque: json["pisoremolque"],
        exteriorchasis: json["exteriorchasis"],
        imgllantaseje1: json["imgllantaseje1"],
        daosllantaseje1: List<String>.from(json["dañosllantaseje1"].map((x) => x)),
        posicion1: Posicion.fromMap(json["posicion1"]),
        posicion2: Posicion.fromMap(json["posicion2"]),
        posicion5: Posicion.fromMap(json["posicion5"]),
        posicion6: Posicion.fromMap(json["posicion6"]),
    );

    Map<String, dynamic> toMap() => {
        "imglateralderecho": imglateralderecho,
        "daños": List<dynamic>.from(daos.map((x) => x)),
        "luceslaterales": luceslaterales,
        "lucesreflejantes": lucesreflejantes,
        "manivela": manivela,
        "patines": patines,
        "zoqueteras": zoqueteras,
        "pisoremolque": pisoremolque,
        "exteriorchasis": exteriorchasis,
        "imgllantaseje1": imgllantaseje1,
        "dañosllantaseje1": List<dynamic>.from(daosllantaseje1.map((x) => x)),
        "posicion1": posicion1.toMap(),
        "posicion2": posicion2.toMap(),
        "posicion5": posicion5.toMap(),
        "posicion6": posicion6.toMap(),
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

class Lateralizquierdo {
    Lateralizquierdo({
        required this.imglateralizquierdo,
        required this.daos,
        required this.luceslaterales,
        required this.lucesreflejantes,
        required this.patines,
        required this.pisoremolque,
        required this.zoqueteras,
        required this.exteriorchasis,
        required this.imgllantaseje2,
        required this.daosllantaseje2,
        required this.posicion3,
        required this.posicion4,
        required this.posicion7,
        required this.posicion8,
    });

    String imglateralizquierdo;
    List<String> daos;
    bool luceslaterales;
    bool lucesreflejantes;
    bool patines;
    bool pisoremolque;
    bool zoqueteras;
    bool exteriorchasis;
    String imgllantaseje2;
    List<String> daosllantaseje2;
    Posicion posicion3;
    Posicion posicion4;
    Posicion posicion7;
    Posicion posicion8;

    factory Lateralizquierdo.fromJson(String str) => Lateralizquierdo.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Lateralizquierdo.fromMap(Map<String, dynamic> json) => Lateralizquierdo(
        imglateralizquierdo: json["imglateralizquierdo"],
        daos: List<String>.from(json["daños"].map((x) => x)),
        luceslaterales: json["luceslaterales"],
        lucesreflejantes: json["lucesreflejantes"],
        patines: json["patines"],
        pisoremolque: json["pisoremolque"],
        zoqueteras: json["zoqueteras"],
        exteriorchasis: json["exteriorchasis"],
        imgllantaseje2: json["imgllantaseje2"],
        daosllantaseje2: List<String>.from(json["dañosllantaseje2"].map((x) => x)),
        posicion3: Posicion.fromMap(json["posicion3"]),
        posicion4: Posicion.fromMap(json["posicion4"]),
        posicion7: Posicion.fromMap(json["posicion7"]),
        posicion8: Posicion.fromMap(json["posicion8"]),
    );

    Map<String, dynamic> toMap() => {
        "imglateralizquierdo": imglateralizquierdo,
        "daños": List<dynamic>.from(daos.map((x) => x)),
        "luceslaterales": luceslaterales,
        "lucesreflejantes": lucesreflejantes,
        "patines": patines,
        "pisoremolque": pisoremolque,
        "zoqueteras": zoqueteras,
        "exteriorchasis": exteriorchasis,
        "imgllantaseje2": imgllantaseje2,
        "dañosllantaseje2": List<dynamic>.from(daosllantaseje2.map((x) => x)),
        "posicion3": posicion3.toMap(),
        "posicion4": posicion4.toMap(),
        "posicion7": posicion7.toMap(),
        "posicion8": posicion8.toMap(),
    };
}

class Puerta {
    Puerta({
        required this.imgpuertas,
        required this.daos,
        required this.lucestraseras,
        required this.bisagras,
        required this.ganchos,
        required this.cerrojos,
        required this.luzplaca,
        required this.estribo,
        required this.lucesalto,
        required this.sello,
        required this.imgsellos,
        required this.numerosellos,
    });

    String imgpuertas;
    List<String> daos;
    bool lucestraseras;
    bool bisagras;
    bool ganchos;
    bool cerrojos;
    bool luzplaca;
    bool estribo;
    bool lucesalto;
    bool sello;
    List<String> imgsellos;
    List<String> numerosellos;

    factory Puerta.fromJson(String str) => Puerta.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Puerta.fromMap(Map<String, dynamic> json) => Puerta(
        imgpuertas: json["imgpuertas"],
        daos: List<String>.from(json["daños"].map((x) => x)),
        lucestraseras: json["lucestraseras"],
        bisagras: json["bisagras"],
        ganchos: json["ganchos"],
        cerrojos: json["cerrojos"],
        luzplaca: json["luzplaca"],
        estribo: json["estribo"],
        lucesalto: json["lucesalto"],
        sello: json["sello"],
        imgsellos: List<String>.from(json["imgsellos"].map((x) => x)),
        numerosellos: List<String>.from(json["numerosellos"].map((x) => x)),
    );

    Map<String, dynamic> toMap() => {
        "imgpuertas": imgpuertas,
        "daños": List<dynamic>.from(daos.map((x) => x)),
        "lucestraseras": lucestraseras,
        "bisagras": bisagras,
        "ganchos": ganchos,
        "cerrojos": cerrojos,
        "luzplaca": luzplaca,
        "estribo": estribo,
        "lucesalto": lucesalto,
        "sello": sello,
        "imgsellos": List<dynamic>.from(imgsellos.map((x) => x)),
        "numerosellos": List<dynamic>.from(numerosellos.map((x) => x)),
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
        required this.fianza,
        required this.bloqueado,
        required this.apto,
        required this.cargado,
    });

    String tipo;
    String numerotrailer;
    String placastrailer;
    String estadoprocedencia;
    String propietario;
    String chasis;
    int cajon;
    String fianza;
    bool bloqueado;
    bool apto;
    bool cargado;

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
        fianza: json["fianza"],
        bloqueado: json["bloqueado"],
        apto: json["apto"],
        cargado: json["cargado"],
    );

    Map<String, dynamic> toMap() => {
        "tipo": tipo,
        "numerotrailer": numerotrailer,
        "placastrailer": placastrailer,
        "estadoprocedencia": estadoprocedencia,
        "propietario": propietario,
        "chasis": chasis,
        "cajon": cajon,
        "fianza": fianza,
        "bloqueado": bloqueado,
        "apto": apto,
        "cargado": cargado,
    };
}
