import 'dart:io';

import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:provider/provider.dart';
import 'package:path/path.dart' as path;

import '../components/components.dart';
import '../global/enviroment.dart';
import '../provider/providers.dart';

class FotosTab extends StatelessWidget {
  const FotosTab({super.key});

  @override
  Widget build(BuildContext context) {
    final addintercambioProvider = Provider.of<AddIntercambioProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Frontal Derecho',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
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
                          addintercambioProvider.frontalDer = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Elegir de la galeria'),
                        leading: const Icon(Icons.image_rounded),
                        onTap: () async {
                          final image = await Camara.takePhotoFromGallery();
                          addintercambioProvider.frontalDer = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Quitar imagen'),
                        leading: const Icon(Icons.delete_forever_rounded),
                        onTap: () {
                          addintercambioProvider.frontalDer = '';
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Salir'),
                        leading: const Icon(Icons.exit_to_app_rounded),
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
          child: Center(
              child: addintercambioProvider.frontalDer.isEmpty
                  ? Image.asset(
                      'assets/images/logo.png',
                      width: 300,
                      height: 250,
                      fit: BoxFit.fill,
                    )
                  : File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.frontalDer))
                          .existsSync()
                      ? Image.file(
                          File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.frontalDer)),
                          width: 300,
                          height: 250,
                          fit: BoxFit.fill,
                        )
                      : FadeInImage.assetNetwork(
                          placeholder: 'assets',
                          image:
                              '${Enviroment.HOST_URL}/imagenes_operadores/${addintercambioProvider.frontalDer}',
                          imageErrorBuilder: (context, error, stackTrace) {
                            return Image.asset(
                              'assets/images/logo.png',
                              width: 300,
                              height: 250,
                              fit: BoxFit.fill,
                            );
                          },
                        )),
        ),
        const SizedBox(height: 10),
        const Text('Lateral Derecho',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
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
                          addintercambioProvider.lateralDer = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Elegir de la galeria'),
                        leading: const Icon(Icons.image_rounded),
                        onTap: () async {
                          final image = await Camara.takePhotoFromGallery();
                          addintercambioProvider.lateralDer = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Quitar imagen'),
                        leading: const Icon(Icons.delete_forever_rounded),
                        onTap: () {
                          addintercambioProvider.lateralDer = '';
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Salir'),
                        leading: const Icon(Icons.exit_to_app_rounded),
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
          child: Center(
              child: addintercambioProvider.lateralDer.isEmpty
                  ? Image.asset(
                      'assets/images/logo.png',
                      width: 300,
                      height: 250,
                      fit: BoxFit.fill,
                    )
                  : File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.lateralDer))
                          .existsSync()
                      ? Image.file(
                          File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.lateralDer)),
                          width: 300,
                          height: 250,
                          fit: BoxFit.fill,
                        )
                      : FadeInImage.assetNetwork(
                          placeholder: 'assets',
                          image:
                              '${Enviroment.HOST_URL}/imagenes_operadores/${addintercambioProvider.lateralDer}',
                          imageErrorBuilder: (context, error, stackTrace) {
                            return Image.asset(
                              'assets/images/logo.png',
                              width: 300,
                              height: 250,
                              fit: BoxFit.fill,
                            );
                          },
                        )),
        ),
        const SizedBox(height: 10),
        const Text('Puertas',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
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
                          addintercambioProvider.puertas = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Elegir de la galeria'),
                        leading: const Icon(Icons.image_rounded),
                        onTap: () async {
                          final image = await Camara.takePhotoFromGallery();
                          addintercambioProvider.puertas = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Quitar imagen'),
                        leading: const Icon(Icons.delete_forever_rounded),
                        onTap: () {
                          addintercambioProvider.puertas = '';
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Salir'),
                        leading: const Icon(Icons.exit_to_app_rounded),
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
          child: Center(
              child: addintercambioProvider.puertas.isEmpty
                  ? Image.asset(
                      'assets/images/logo.png',
                      width: 300,
                      height: 250,
                      fit: BoxFit.fill,
                    )
                  : File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.puertas))
                          .existsSync()
                      ? Image.file(
                          File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.puertas)),
                          width: 300,
                          height: 250,
                          fit: BoxFit.fill,
                        )
                      : FadeInImage.assetNetwork(
                          placeholder: 'assets',
                          image:
                              '${Enviroment.HOST_URL}/imagenes_operadores/${addintercambioProvider.puertas}',
                          imageErrorBuilder: (context, error, stackTrace) {
                            return Image.asset(
                              'assets/images/logo.png',
                              width: 300,
                              height: 250,
                              fit: BoxFit.fill,
                            );
                          },
                        )),
        ),
        const SizedBox(height: 10),
        const Text('Sello',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
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
                          addintercambioProvider.sello = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Elegir de la galeria'),
                        leading: const Icon(Icons.image_rounded),
                        onTap: () async {
                          final image = await Camara.takePhotoFromGallery();
                          addintercambioProvider.sello = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Quitar imagen'),
                        leading: const Icon(Icons.delete_forever_rounded),
                        onTap: () {
                          addintercambioProvider.sello = '';
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Salir'),
                        leading: const Icon(Icons.exit_to_app_rounded),
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
          child: Center(
              child: addintercambioProvider.sello.isEmpty
                  ? Image.asset(
                      'assets/images/logo.png',
                      width: 300,
                      height: 250,
                      fit: BoxFit.fill,
                    )
                  : File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.sello))
                          .existsSync()
                      ? Image.file(
                          File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.sello)),
                          width: 300,
                          height: 250,
                          fit: BoxFit.fill,
                        )
                      : FadeInImage.assetNetwork(
                          placeholder: 'assets',
                          image:
                              '${Enviroment.HOST_URL}/imagenes_operadores/${addintercambioProvider.sello}',
                          imageErrorBuilder: (context, error, stackTrace) {
                            return Image.asset(
                              'assets/images/logo.png',
                              width: 300,
                              height: 250,
                              fit: BoxFit.fill,
                            );
                          },
                        )),
        ),
        const SizedBox(height: 10),
        const Text('Lateral Izquierdo',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
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
                          addintercambioProvider.lateralIzq = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Elegir de la galeria'),
                        leading: const Icon(Icons.image_rounded),
                        onTap: () async {
                          final image = await Camara.takePhotoFromGallery();
                          addintercambioProvider.lateralIzq = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Quitar imagen'),
                        leading: const Icon(Icons.delete_forever_rounded),
                        onTap: () {
                          addintercambioProvider.lateralIzq = '';
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Salir'),
                        leading: const Icon(Icons.exit_to_app_rounded),
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
          child: Center(
              child: addintercambioProvider.lateralIzq.isEmpty
                  ? Image.asset(
                      'assets/images/logo.png',
                      width: 300,
                      height: 250,
                      fit: BoxFit.fill,
                    )
                  : File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.lateralIzq))
                          .existsSync()
                      ? Image.file(
                          File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.lateralIzq)),
                          width: 300,
                          height: 250,
                          fit: BoxFit.fill,
                        )
                      : FadeInImage.assetNetwork(
                          placeholder: 'assets',
                          image:
                              '${Enviroment.HOST_URL}/imagenes_operadores/${addintercambioProvider.lateralIzq}',
                          imageErrorBuilder: (context, error, stackTrace) {
                            return Image.asset(
                              'assets/images/logo.png',
                              width: 300,
                              height: 250,
                              fit: BoxFit.fill,
                            );
                          },
                        )),
        ),
        const SizedBox(height: 10),
        const Text('Frontal Izquierdo',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
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
                          addintercambioProvider.frontalIzq = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Elegir de la galeria'),
                        leading: const Icon(Icons.image_rounded),
                        onTap: () async {
                          final image = await Camara.takePhotoFromGallery();
                          addintercambioProvider.frontalIzq = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Quitar imagen'),
                        leading: const Icon(Icons.delete_forever_rounded),
                        onTap: () {
                          addintercambioProvider.frontalIzq = '';
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Salir'),
                        leading: const Icon(Icons.exit_to_app_rounded),
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
          child: Center(
              child: addintercambioProvider.frontalIzq.isEmpty
                  ? Image.asset(
                      'assets/images/logo.png',
                      width: 300,
                      height: 250,
                      fit: BoxFit.fill,
                    )
                  : File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.frontalIzq))
                          .existsSync()
                      ? Image.file(
                          File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.frontalIzq)),
                          width: 300,
                          height: 250,
                          fit: BoxFit.fill,
                        )
                      : FadeInImage.assetNetwork(
                          placeholder: 'assets',
                          image:
                              '${Enviroment.HOST_URL}/imagenes_operadores/${addintercambioProvider.frontalIzq}',
                          imageErrorBuilder: (context, error, stackTrace) {
                            return Image.asset(
                              'assets/images/logo.png',
                              width: 300,
                              height: 250,
                              fit: BoxFit.fill,
                            );
                          },
                        )),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Daños',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                addintercambioProvider.danosimgs.isNotEmpty
                    ? TextButton(
                        onPressed: () {
                          if (addintercambioProvider.danosimgs.isNotEmpty) {
                            addintercambioProvider.deleteLastDanoImg();
                            addintercambioProvider.controller.animateTo(
                              addintercambioProvider
                                  .controller.position.maxScrollExtent,
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastOutSlowIn,
                            );
                          }
                        },
                        child: const Text(
                          '-',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    : Container(),
                TextButton(
                  onPressed: () async {
                    await showMaterialModalBottomSheet(
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
                                  addintercambioProvider
                                      .addDanoImg(image!.name);
                                  Future.delayed(
                                      const Duration(milliseconds: 100), () {
                                    addintercambioProvider.controller.animateTo(
                                      addintercambioProvider
                                          .controller.position.maxScrollExtent,
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.fastOutSlowIn,
                                    );
                                  });
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
                                  addintercambioProvider
                                      .addDanoImg(image!.name);
                                  Future.delayed(
                                      const Duration(milliseconds: 100), () {
                                    addintercambioProvider.controller.animateTo(
                                      addintercambioProvider
                                          .controller.position.maxScrollExtent,
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.fastOutSlowIn,
                                    );
                                  });
                                  Navigator.pop(context);
                                },
                              ),
                              const Divider(),
                              ListTile(
                                title: const Text('Salir'),
                                leading: const Icon(Icons.exit_to_app_rounded),
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
                  child: const Text('+',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                )
              ],
            )
          ],
        ),
        ListView.builder(
            physics: const ScrollPhysics(),
            itemCount: addintercambioProvider.danosimgs.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: GestureDetector(
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
                                  title: const Text('Quitar imagen'),
                                  leading:
                                      const Icon(Icons.delete_forever_rounded),
                                  onTap: () {
                                    addintercambioProvider.deleteDanoImg(index);
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
                    child: addintercambioProvider.danosimgs.isNotEmpty
                        ? Center(
                            child:
                                addintercambioProvider.danosimgs[index].isEmpty
                                    ? Image.asset(
                                        'assets/images/logo.png',
                                        width: 300,
                                        height: 250,
                                        fit: BoxFit.fill,
                                      )
                                    : File(path.join(
                                                addintercambioProvider
                                                    .directoryPath,
                                                addintercambioProvider
                                                    .danosimgs[index]))
                                            .existsSync()
                                        ? Image.file(
                                            File(path.join(
                                                addintercambioProvider
                                                    .directoryPath,
                                                addintercambioProvider
                                                    .danosimgs[index])),
                                            width: 300,
                                            height: 250,
                                            fit: BoxFit.fill,
                                          )
                                        : FadeInImage.assetNetwork(
                                            placeholder: 'assets',
                                            image:
                                                '${Enviroment.HOST_URL}/imagenes_operadores/${addintercambioProvider.danosimgs[index]}',
                                            imageErrorBuilder:
                                                (context, error, stackTrace) {
                                              return Image.asset(
                                                'assets/images/logo.png',
                                                width: 300,
                                                height: 250,
                                                fit: BoxFit.fill,
                                              );
                                            },
                                          ))
                        : Image.asset('assets/images/logo.png',
                            width: 300, height: 250, fit: BoxFit.fill)),
              );
            })
      ],
    );
  }
}
