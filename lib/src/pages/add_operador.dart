import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path/path.dart' as path;
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:provider/provider.dart';

import 'package:trailerinspector/src/components/components.dart';
import 'package:trailerinspector/src/models/models.dart';

import '../provider/providers.dart';
import '../widgets/widgets.dart';

class AddOperador extends StatelessWidget {
  const AddOperador({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final operadorProvider = Provider.of<OperadorProvider>(context);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          operadorProvider.operador.image = operadorProvider.image;
          final resp =
              await operadorProvider.postOperador(operadorProvider.operador);
          final resp2 = await operadorProvider
              .postImageOperador(operadorProvider.operador.image);

          if (resp && resp2) {
            ShowSnackBar(
                context, 'Operador Agregado Con Exito', 4, Colors.green);
            await operadorProvider.getOperadores();
            Navigator.pop(context);
          } else if (!resp) {
            ShowSnackBar(
                context,
                'Error al agregar el operador, verifique los datos y/o conexion a internet',
                4,
                Colors.red);
          } else if (!resp2) {
            ShowSnackBar(
                context,
                'Error al agregar la imagen, verifique los datos y/o conexion a internet',
                4,
                Colors.red);
          }
        },
        backgroundColor: CustomColors.primary,
        child: const Icon(Icons.save),
      ),
      appBar: const CustomAppbar(title: 'Operador'),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: operadorProvider.frmKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                GestureDetector(
                    onTap: () {
                      showMaterialModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20))),
                        context: context,
                        builder: (context) => SingleChildScrollView(
                          controller: ModalScrollController.of(context),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Column(
                              children: [
                                ListTile(
                                  title: const Text('Tomar Foto'),
                                  leading: const Icon(Icons.camera_alt_rounded),
                                  onTap: () async {
                                    final image = await Camara.takePhoto();
                                    operadorProvider.image = image!.name;
                                    operadorProvider.operador =
                                        operadorProvider.operador = Operador(
                                            nombre: operadorProvider
                                                .operador.nombre,
                                            rfc: operadorProvider.operador.rfc,
                                            linea:
                                                operadorProvider.operador.linea,
                                            scac:
                                                operadorProvider.operador.scac,
                                            image: operadorProvider
                                                .operador.image);
                                    Navigator.pop(context);
                                  },
                                ),
                                const Divider(),
                                ListTile(
                                  title: const Text('Elegir de la galeria'),
                                  leading: const Icon(Icons.image_rounded),
                                  onTap: () async {
                                    final image =
                                        await Camara.takePhotoFromGallery();
                                    operadorProvider.image = image!.name;
                                    operadorProvider.operador =
                                        operadorProvider.operador = Operador(
                                            nombre: operadorProvider
                                                .operador.nombre,
                                            rfc: operadorProvider.operador.rfc,
                                            linea:
                                                operadorProvider.operador.linea,
                                            scac:
                                                operadorProvider.operador.scac,
                                            image: operadorProvider
                                                .operador.image);
                                    Navigator.pop(context);
                                  },
                                ),
                                const Divider(),
                                ListTile(
                                  title: const Text('Quitar imagen'),
                                  leading:
                                      const Icon(Icons.delete_forever_rounded),
                                  onTap: () {
                                    operadorProvider.image = '';
                                    operadorProvider.operador.image = '';
                                    operadorProvider.operador =
                                        operadorProvider.operador = Operador(
                                            nombre: operadorProvider
                                                .operador.nombre,
                                            rfc: operadorProvider.operador.rfc,
                                            linea:
                                                operadorProvider.operador.linea,
                                            scac:
                                                operadorProvider.operador.scac,
                                            image: operadorProvider
                                                .operador.image);
                                    Navigator.pop(context);
                                  },
                                ),
                                const Divider(),
                                ListTile(
                                  title: const Text('Salir'),
                                  leading:
                                      const Icon(Icons.exit_to_app_rounded),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                const Divider(),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    child: operadorProvider.image.isEmpty
                        ? operadorProvider.operador.image.isNotEmpty
                            ? Image.network(
                                'http://192.168.1.161:9000/imagenes_operadores/${operadorProvider.operador.image}')
                            : Image.asset(
                                'assets/images/logo.png',
                                width: 300,
                                height: 250,
                                fit: BoxFit.fill,
                              )
                        : operadorProvider.operador.image.isEmpty
                            ? Image.file(
                                File(path.join(operadorProvider.directoryPath,
                                    operadorProvider.image)),
                                width: 300,
                                height: 250,
                                fit: BoxFit.fill,
                              )
                            : Image.file(
                                File(path.join(operadorProvider.directoryPath,
                                    operadorProvider.image)),
                                width: 300,
                                height: 250,
                                fit: BoxFit.fill,
                              )),
                const SizedBox(height: 15),
                TextFormField(
                    initialValue: operadorProvider.operador.nombre,
                    cursorColor: Colors.grey[700],
                    decoration: InputDecoration(
                        floatingLabelStyle:
                            TextStyle(color: Colors.black.withOpacity(0.9)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(18)),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18)),
                        labelText: 'Nombre del Operador'),
                    onChanged: (value) {
                      operadorProvider.operador.nombre = value;
                    },
                    validator: (value) => value!.isEmpty
                        ? "Agregue el nombre del operador"
                        : null,
                    textInputAction: TextInputAction.next),
                const SizedBox(height: 15),
                TextFormField(
                    initialValue: operadorProvider.operador.rfc,
                    cursorColor: Colors.grey[700],
                    decoration: InputDecoration(
                        floatingLabelStyle:
                            TextStyle(color: Colors.black.withOpacity(0.9)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(18)),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18)),
                        labelText: 'RFC'),
                    onChanged: (value) {
                      operadorProvider.operador.rfc = value;
                    },
                    validator: (value) =>
                        value!.isEmpty ? "Agregue el RFC del operador" : null,
                    textInputAction: TextInputAction.next),
                const SizedBox(height: 15),
                TextFormField(
                    initialValue: operadorProvider.operador.linea,
                    cursorColor: Colors.grey[700],
                    decoration: InputDecoration(
                        floatingLabelStyle:
                            TextStyle(color: Colors.black.withOpacity(0.9)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(18)),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18)),
                        labelText: 'Linea Transportista'),
                    onChanged: (value) {
                      operadorProvider.operador.linea = value;
                    },
                    validator: (value) => value!.isEmpty
                        ? "Agregue la linea transportista"
                        : null,
                    textInputAction: TextInputAction.next),
                const SizedBox(height: 15),
                TextFormField(
                    initialValue: operadorProvider.operador.scac,
                    cursorColor: Colors.grey[700],
                    decoration: InputDecoration(
                        floatingLabelStyle:
                            TextStyle(color: Colors.black.withOpacity(0.9)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(18)),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18)),
                        labelText: 'SCAC'),
                    onChanged: (value) {
                      operadorProvider.operador.scac = value;
                    },
                    validator: (value) =>
                        value!.isEmpty ? "Agregue el SCAC" : null,
                    textInputAction: TextInputAction.done),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
