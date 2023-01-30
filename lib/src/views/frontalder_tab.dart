import 'dart:io';

import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:path/path.dart' as path;
import 'package:provider/provider.dart';
import '../components/components.dart';
import '../global/enviroment.dart';
import '../provider/providers.dart';

class FrontalDerechoTab extends StatelessWidget {
  const FrontalDerechoTab({super.key});

  @override
  Widget build(BuildContext context) {
    final frontalDerechoProvider = Provider.of<FrontalDerechoProvider>(context);
    return Column(
      children: [
        ImagenFrontalDer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Daños'),
            Row(
              children: [
                frontalDerechoProvider.danos.isNotEmpty
                    ? TextButton(
                        onPressed: () async {
                          frontalDerechoProvider.danos.removeLast();
                          frontalDerechoProvider.danos =
                              frontalDerechoProvider.danos;
                        },
                        child: const Text("-"))
                    : Container(),
                TextButton(
                    onPressed: () async {
                      final image = await Camara.takePhoto();
                      frontalDerechoProvider.danos.add(image!.name);
                      frontalDerechoProvider.danos =
                          frontalDerechoProvider.danos;
                    },
                    child: const Text("+")),
              ],
            )
          ],
        ),
        frontalDerechoProvider.danos.isNotEmpty
            ? ListView.builder(
                physics: const ScrollPhysics(),
                controller: ModalScrollController.of(context),
                shrinkWrap: true,
                itemCount: frontalDerechoProvider.danos.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Center(
                          child: frontalDerechoProvider.danos[index].isEmpty
                              ? Image.asset(
                                  'assets/images/logo.png',
                                  width: 300,
                                  height: 250,
                                  fit: BoxFit.fill,
                                )
                              : File(path.join(
                                          frontalDerechoProvider.directoryPath,
                                          frontalDerechoProvider.danos[index]))
                                      .existsSync()
                                  ? Image.file(
                                      File(path.join(
                                          frontalDerechoProvider.directoryPath,
                                          frontalDerechoProvider.danos[index])),
                                      width: 300,
                                      height: 250,
                                      fit: BoxFit.fill,
                                    )
                                  : FadeInImage.assetNetwork(
                                      placeholder: 'assets',
                                      image:
                                          '${Enviroment.HOST_URL}/imagenes_operadores/${frontalDerechoProvider.danos[index]}',
                                      imageErrorBuilder:
                                          (context, error, stackTrace) {
                                        return Image.asset(
                                          'assets/images/logo.png',
                                          width: 300,
                                          height: 250,
                                          fit: BoxFit.fill,
                                        );
                                      },
                                    )),
                      const Divider(),
                    ],
                  );
                },
              )
            : Container(),
        Row(
          children: [
            Expanded(
              child: CheckboxListTile(
                  value: frontalDerechoProvider.lucesfrontales,
                  onChanged: (value) {
                    frontalDerechoProvider.lucesfrontales = value;
                  },
                  title: const Text('Luces Frontales')),
            ),
            Expanded(
              child: CheckboxListTile(
                  value: frontalDerechoProvider.coples,
                  onChanged: (value) {
                    frontalDerechoProvider.coples = value;
                  },
                  title: const Text('Coples')),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CheckboxListTile(
                  value: frontalDerechoProvider.lineasdeaire,
                  onChanged: (value) {
                    frontalDerechoProvider.lineasdeaire = value;
                  },
                  title: const Text('Lineas de aire')),
            ),
            Expanded(
              child: CheckboxListTile(
                  value: frontalDerechoProvider.gomitas,
                  onChanged: (value) {
                    frontalDerechoProvider.gomitas = value;
                  },
                  title: const Text('Gomitas')),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CheckboxListTile(
                  value: frontalDerechoProvider.mangueras,
                  onChanged: (value) {
                    frontalDerechoProvider.mangueras = value;
                  },
                  title: const Text('Mangueras')),
            ),
            Expanded(
              child: CheckboxListTile(
                  value: frontalDerechoProvider.quinta,
                  onChanged: (value) {
                    frontalDerechoProvider.quinta = value;
                  },
                  title: const Text('5° Rueda')),
            ),
          ],
        ),
      ],
    );
  }
}

class ImagenFrontalDer extends StatelessWidget {
  const ImagenFrontalDer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final frontalDerProvider = Provider.of<FrontalDerechoProvider>(context);
    return GestureDetector(
      onTap: () {
        showMaterialModalBottomSheet(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20))),
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
                      frontalDerProvider.image = image!.name;
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Elegir de la galeria'),
                    leading: const Icon(Icons.image_rounded),
                    onTap: () async {
                      final image = await Camara.takePhotoFromGallery();
                      frontalDerProvider.image = image!.name;
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Quitar imagen'),
                    leading: const Icon(Icons.delete_forever_rounded),
                    onTap: () {
                      frontalDerProvider.image = '';
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
          child: frontalDerProvider.image.isEmpty
              ? Image.asset(
                  'assets/images/logo.png',
                  width: 300,
                  height: 250,
                  fit: BoxFit.fill,
                )
              : File(path.join(frontalDerProvider.directoryPath,
                          frontalDerProvider.image))
                      .existsSync()
                  ? Image.file(
                      File(path.join(frontalDerProvider.directoryPath,
                          frontalDerProvider.image)),
                      width: 300,
                      height: 250,
                      fit: BoxFit.fill,
                    )
                  : FadeInImage.assetNetwork(
                      placeholder: 'assets',
                      image:
                          '${Enviroment.HOST_URL}/imagenes_operadores/${frontalDerProvider.image}',
                      imageErrorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          'assets/images/logo.png',
                          width: 300,
                          height: 250,
                          fit: BoxFit.fill,
                        );
                      },
                    )),
    );
  }
}
