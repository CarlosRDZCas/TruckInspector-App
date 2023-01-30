import 'dart:io';

import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:provider/provider.dart';
import 'package:path/path.dart' as path;

import '../components/components.dart';
import '../global/enviroment.dart';
import '../provider/providers.dart';
import '../widgets/widgets.dart';

class PuertasTab extends StatelessWidget {
  const PuertasTab({super.key});

  @override
  Widget build(BuildContext context) {
    final puertasProvider = Provider.of<PuertasProvider>(context);
    return Column(
      children: [
        const ImagenPuertas(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Daños'),
            Row(
              children: [
                puertasProvider.danos.isNotEmpty
                    ? TextButton(
                        onPressed: () async {
                          puertasProvider.danos.removeLast();
                          puertasProvider.danos = puertasProvider.danos;
                        },
                        child: const Text("-"))
                    : Container(),
                TextButton(
                    onPressed: () async {
                      final image = await Camara.takePhoto();
                      puertasProvider.danos.add(image!.name);
                      puertasProvider.danos = puertasProvider.danos;
                    },
                    child: const Text("+")),
              ],
            )
          ],
        ),
        puertasProvider.danos.isNotEmpty
            ? ListView.builder(
                physics: const ScrollPhysics(),
                controller: ModalScrollController.of(context),
                shrinkWrap: true,
                itemCount: puertasProvider.danos.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Center(
                          child: puertasProvider.danos[index].isEmpty
                              ? Image.asset(
                                  'assets/images/logo.png',
                                  width: 300,
                                  height: 250,
                                  fit: BoxFit.fill,
                                )
                              : File(path.join(puertasProvider.directoryPath,
                                          puertasProvider.danos[index]))
                                      .existsSync()
                                  ? Image.file(
                                      File(path.join(
                                          puertasProvider.directoryPath,
                                          puertasProvider.danos[index])),
                                      width: 300,
                                      height: 250,
                                      fit: BoxFit.fill,
                                    )
                                  : FadeInImage.assetNetwork(
                                      placeholder: 'assets',
                                      image:
                                          '${Enviroment.HOST_URL}/imagenes_operadores/${puertasProvider.danos[index]}',
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
                  value: puertasProvider.lucestraseras,
                  onChanged: (value) {
                    puertasProvider.lucestraseras = value;
                  },
                  title: const Text('Luces Traseras')),
            ),
            Expanded(
              child: CheckboxListTile(
                  value: puertasProvider.estribos,
                  onChanged: (value) {
                    puertasProvider.estribos = value;
                  },
                  title: const Text('Estribos')),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CheckboxListTile(
                  value: puertasProvider.bisagras,
                  onChanged: (value) {
                    puertasProvider.bisagras = value;
                  },
                  title: const Text('Bisagras')),
            ),
            Expanded(
              child: CheckboxListTile(
                  value: puertasProvider.lucesalto,
                  onChanged: (value) {
                    puertasProvider.lucesalto = value;
                  },
                  title: const Text('Luces Alto')),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CheckboxListTile(
                  value: puertasProvider.ganchos,
                  onChanged: (value) {
                    puertasProvider.ganchos = value;
                  },
                  title: const Text('Ganchos')),
            ),
            Expanded(
              child: CheckboxListTile(
                  value: puertasProvider.luzplaca,
                  onChanged: (value) {
                    puertasProvider.luzplaca = value;
                  },
                  title: const Text('Luz Placa')),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CheckboxListTile(
                  value: puertasProvider.cerrojos,
                  onChanged: (value) {
                    puertasProvider.cerrojos = value;
                  },
                  title: const Text('Cerrojos')),
            ),
            Expanded(child: Container()),
          ],
        ),
        CheckboxListTile(
            value: puertasProvider.sello,
            onChanged: (value) {
              puertasProvider.sello = value;
            },
            title: const Text('Sello')),
        puertasProvider.sello == true
            ? Column(
                children: [
                  const ImagenSello(),
                  CustomTextFormField(
                      initialValue: puertasProvider.numerosellos.isEmpty
                          ? ''
                          : puertasProvider.numerosellos[0],
                      height: 45,
                      labelText: 'Numero de sello',
                      obscuretext: false,
                      onChanged: (value) {
                        puertasProvider.numerosellos.isEmpty
                            ? puertasProvider.numerosellos.add(value)
                            : puertasProvider.numerosellos[0] = value;
                      },
                      validator: (value) {}),
                ],
              )
            : Container(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Daños'),
            Row(
              children: [
                puertasProvider.imgsellos.isNotEmpty
                    ? TextButton(
                        onPressed: () async {
                          puertasProvider.imgsellos.removeLast();
                          puertasProvider.imgsellos = puertasProvider.imgsellos;
                        },
                        child: const Text("-"))
                    : Container(),
                TextButton(
                    onPressed: () async {
                      final image = await Camara.takePhoto();
                      puertasProvider.imgsellos.add(image!.name);
                      puertasProvider.imgsellos = puertasProvider.imgsellos;
                    },
                    child: const Text("+")),
              ],
            )
          ],
        ),
        puertasProvider.imgsellos.isNotEmpty
            ? ListView.builder(
                physics: const ScrollPhysics(),
                controller: ModalScrollController.of(context),
                shrinkWrap: true,
                itemCount: puertasProvider.imgsellos.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Center(
                          child: puertasProvider.imgsellos[index].isEmpty
                              ? Image.asset(
                                  'assets/images/logo.png',
                                  width: 300,
                                  height: 250,
                                  fit: BoxFit.fill,
                                )
                              : File(path.join(puertasProvider.directoryPath,
                                          puertasProvider.imgsellos[index]))
                                      .existsSync()
                                  ? Image.file(
                                      File(path.join(
                                          puertasProvider.directoryPath,
                                          puertasProvider.imgsellos[index])),
                                      width: 300,
                                      height: 250,
                                      fit: BoxFit.fill,
                                    )
                                  : FadeInImage.assetNetwork(
                                      placeholder: 'assets',
                                      image:
                                          '${Enviroment.HOST_URL}/imagenes_operadores/${puertasProvider.imgsellos[index]}',
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
      ],
    );
  }
}

class ImagenPuertas extends StatelessWidget {
  const ImagenPuertas({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final puertasProvider = Provider.of<PuertasProvider>(context);
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
                      puertasProvider.image = image!.name;
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Elegir de la galeria'),
                    leading: const Icon(Icons.image_rounded),
                    onTap: () async {
                      final image = await Camara.takePhotoFromGallery();
                      puertasProvider.image = image!.name;
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Quitar imagen'),
                    leading: const Icon(Icons.delete_forever_rounded),
                    onTap: () {
                      puertasProvider.image = '';
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
          child: puertasProvider.image.isEmpty
              ? Image.asset(
                  'assets/images/logo.png',
                  width: 300,
                  height: 250,
                  fit: BoxFit.fill,
                )
              : File(path.join(
                          puertasProvider.directoryPath, puertasProvider.image))
                      .existsSync()
                  ? Image.file(
                      File(path.join(puertasProvider.directoryPath,
                          puertasProvider.image)),
                      width: 300,
                      height: 250,
                      fit: BoxFit.fill,
                    )
                  : FadeInImage.assetNetwork(
                      placeholder: 'assets',
                      image:
                          '${Enviroment.HOST_URL}/imagenes_operadores/${puertasProvider.image}',
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

class ImagenSello extends StatelessWidget {
  const ImagenSello({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final puertasProvider = Provider.of<PuertasProvider>(context);
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
                      puertasProvider.imgsellos.add(image!.name);
                      puertasProvider.imgsellos = puertasProvider.imgsellos;
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Elegir de la galeria'),
                    leading: const Icon(Icons.image_rounded),
                    onTap: () async {
                      final image = await Camara.takePhotoFromGallery();
                      puertasProvider.imgsellos.add(image!.name);
                      puertasProvider.imgsellos = puertasProvider.imgsellos;
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Quitar imagen'),
                    leading: const Icon(Icons.delete_forever_rounded),
                    onTap: () {
                      puertasProvider.imgsellos.removeLast();
                      puertasProvider.imgsellos = puertasProvider.imgsellos;
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
          child: puertasProvider.imgsellos.isEmpty
              ? Image.asset(
                  'assets/images/logo.png',
                  width: 300,
                  height: 250,
                  fit: BoxFit.fill,
                )
              : File(path.join(puertasProvider.directoryPath,
                          puertasProvider.imgsellos[0]))
                      .existsSync()
                  ? Image.file(
                      File(path.join(puertasProvider.directoryPath,
                          puertasProvider.imgsellos[0])),
                      width: 300,
                      height: 250,
                      fit: BoxFit.fill,
                    )
                  : FadeInImage.assetNetwork(
                      placeholder: 'assets',
                      image:
                          '${Enviroment.HOST_URL}/imagenes_operadores/${puertasProvider.imgsellos[0]}',
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
