import 'dart:io';

import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:provider/provider.dart';

import 'package:path/path.dart' as path;

import '../components/components.dart';
import '../global/enviroment.dart';
import '../provider/providers.dart';
import '../widgets/widgets.dart';

class LateralDerechoTab extends StatelessWidget {
  const LateralDerechoTab({super.key});

  @override
  Widget build(BuildContext context) {
    final lateralDerProvider = Provider.of<LateralDerechoProvider>(context);
    return Column(
      children: [
        const ImagenLatDer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Daños'),
            Row(
              children: [
                lateralDerProvider.danos.isNotEmpty
                    ? TextButton(
                        onPressed: () async {
                          lateralDerProvider.danos.removeLast();
                          lateralDerProvider.danos = lateralDerProvider.danos;
                        },
                        child: const Text("-"))
                    : Container(),
                TextButton(
                    onPressed: () async {
                      final image = await Camara.takePhoto();
                      lateralDerProvider.danos.add(image!.name);
                      lateralDerProvider.danos = lateralDerProvider.danos;
                    },
                    child: const Text("+")),
              ],
            )
          ],
        ),
        lateralDerProvider.danos.isNotEmpty
            ? ListView.builder(
                physics: const ScrollPhysics(),
                controller: ModalScrollController.of(context),
                shrinkWrap: true,
                itemCount: lateralDerProvider.danos.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Center(
                          child: lateralDerProvider.danos[index].isEmpty
                              ? Image.asset(
                                  'assets/images/logo.png',
                                  width: 300,
                                  height: 250,
                                  fit: BoxFit.fill,
                                )
                              : File(path.join(lateralDerProvider.directoryPath,
                                          lateralDerProvider.danos[index]))
                                      .existsSync()
                                  ? Image.file(
                                      File(path.join(
                                          lateralDerProvider.directoryPath,
                                          lateralDerProvider.danos[index])),
                                      width: 300,
                                      height: 250,
                                      fit: BoxFit.fill,
                                    )
                                  : FadeInImage.assetNetwork(
                                      placeholder: 'assets',
                                      image:
                                          '${Enviroment.HOST_URL}/imagenes_operadores/${lateralDerProvider.danos[index]}',
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
                  value: lateralDerProvider.luceslaterales,
                  onChanged: (value) {
                    lateralDerProvider.luceslaterales = value;
                  },
                  title: const Text('Luces Laterales')),
            ),
            Expanded(
              child: CheckboxListTile(
                  value: lateralDerProvider.pisoremolque,
                  onChanged: (value) {
                    lateralDerProvider.pisoremolque = value;
                  },
                  title: const Text('Piso Remolque')),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CheckboxListTile(
                  value: lateralDerProvider.lucesreflejantes,
                  onChanged: (value) {
                    lateralDerProvider.lucesreflejantes = value;
                  },
                  title: const Text('Luces reflejantes')),
            ),
            Expanded(
              child: CheckboxListTile(
                  value: lateralDerProvider.zoqueteras,
                  onChanged: (value) {
                    lateralDerProvider.zoqueteras = value;
                  },
                  title: const Text('Zoqueteras')),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CheckboxListTile(
                  value: lateralDerProvider.manivela,
                  onChanged: (value) {
                    lateralDerProvider.manivela = value;
                  },
                  title: const Text('Manivela')),
            ),
            Expanded(
              child: CheckboxListTile(
                  value: lateralDerProvider.exteriorchasis,
                  onChanged: (value) {
                    lateralDerProvider.exteriorchasis = value;
                  },
                  title: const Text('Exterior Chasis')),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CheckboxListTile(
                  value: lateralDerProvider.patines,
                  onChanged: (value) {
                    lateralDerProvider.patines = value;
                  },
                  title: const Text('Patines')),
            ),
            Expanded(child: Container())
          ],
        ),
        const Text('Llantas'),
        const ImagenLatDerLlantas(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Daños'),
            Row(
              children: [
                lateralDerProvider.danosllantas.isNotEmpty
                    ? TextButton(
                        onPressed: () async {
                          lateralDerProvider.danosllantas.removeLast();
                          lateralDerProvider.danosllantas =
                              lateralDerProvider.danosllantas;
                        },
                        child: const Text("-"))
                    : Container(),
                TextButton(
                    onPressed: () async {
                      final image = await Camara.takePhoto();
                      lateralDerProvider.danosllantas.add(image!.name);
                      lateralDerProvider.danosllantas =
                          lateralDerProvider.danosllantas;
                    },
                    child: const Text("+")),
              ],
            )
          ],
        ),
        lateralDerProvider.danosllantas.isNotEmpty
            ? ListView.builder(
                physics: const ScrollPhysics(),
                controller: ModalScrollController.of(context),
                shrinkWrap: true,
                itemCount: lateralDerProvider.danosllantas.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Center(
                          child: lateralDerProvider.danosllantas[index].isEmpty
                              ? Image.asset(
                                  'assets/images/logo.png',
                                  width: 300,
                                  height: 250,
                                  fit: BoxFit.fill,
                                )
                              : File(path.join(
                                          lateralDerProvider.directoryPath,
                                          lateralDerProvider
                                              .danosllantas[index]))
                                      .existsSync()
                                  ? Image.file(
                                      File(path.join(
                                          lateralDerProvider.directoryPath,
                                          lateralDerProvider
                                              .danosllantas[index])),
                                      width: 300,
                                      height: 250,
                                      fit: BoxFit.fill,
                                    )
                                  : FadeInImage.assetNetwork(
                                      placeholder: 'assets',
                                      image:
                                          '${Enviroment.HOST_URL}/imagenes_operadores/${lateralDerProvider.danosllantas[index]}',
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
        const Text('Posicion 1'),
        CustomDropDownButton(
            radius: 18,
            value: lateralDerProvider.marcallanta1,
            hint: 'Marca de la llanta',
            items: marcasLlantas,
            onChanged: (value) {
              lateralDerProvider.marcallanta1 = value;
            }),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                  initialValue: lateralDerProvider.estadollanta1,
                  height: 45,
                  labelText: 'Estado de la llanta',
                  obscuretext: false,
                  onChanged: (value) {
                    lateralDerProvider.estadollanta1 = value;
                  },
                  validator: (value) {}),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomTextFormField(
                  initialValue: lateralDerProvider.profundidadllanta1,
                  height: 45,
                  labelText: 'Profundidad',
                  obscuretext: false,
                  onChanged: (value) {
                    lateralDerProvider.profundidadllanta1 = value;
                  },
                  validator: (value) {}),
            ),
          ],
        ),
        const Text('Posicion 2'),
        CustomDropDownButton(
            radius: 18,
            value: lateralDerProvider.marcallanta2,
            hint: 'Marca de la llanta',
            items: marcasLlantas,
            onChanged: (value) {
              lateralDerProvider.marcallanta2 = value;
            }),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                  initialValue: lateralDerProvider.estadollanta2,
                  height: 45,
                  labelText: 'Estado de la llanta',
                  obscuretext: false,
                  onChanged: (value) {
                    lateralDerProvider.estadollanta2 = value;
                  },
                  validator: (value) {}),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomTextFormField(
                  initialValue: lateralDerProvider.profundidadllanta2,
                  height: 45,
                  labelText: 'Profundidad',
                  obscuretext: false,
                  onChanged: (value) {
                    lateralDerProvider.profundidadllanta2 = value;
                  },
                  validator: (value) {}),
            ),
          ],
        ),
        const Text('Posicion 5'),
        CustomDropDownButton(
            radius: 18,
            value: lateralDerProvider.marcallanta5,
            hint: 'Marca de la llanta',
            items: marcasLlantas,
            onChanged: (value) {
              lateralDerProvider.marcallanta5 = value;
            }),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                  initialValue: lateralDerProvider.estadollanta5,
                  height: 45,
                  labelText: 'Estado de la llanta',
                  obscuretext: false,
                  onChanged: (value) {
                    lateralDerProvider.estadollanta5 = value;
                  },
                  validator: (value) {}),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomTextFormField(
                  initialValue: lateralDerProvider.profundidadllanta5,
                  height: 45,
                  labelText: 'Profundidad',
                  obscuretext: false,
                  onChanged: (value) {
                    lateralDerProvider.profundidadllanta5 = value;
                  },
                  validator: (value) {}),
            ),
          ],
        ),
        const Text('Posicion 6'),
        CustomDropDownButton(
            radius: 18,
            value: lateralDerProvider.marcallanta6,
            hint: 'Marca de la llanta',
            items: marcasLlantas,
            onChanged: (value) {
              lateralDerProvider.marcallanta6 = value;
            }),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                  initialValue: lateralDerProvider.estadollanta6,
                  height: 45,
                  labelText: 'Estado de la llanta',
                  obscuretext: false,
                  onChanged: (value) {
                    lateralDerProvider.estadollanta6 = value;
                  },
                  validator: (value) {}),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomTextFormField(
                  initialValue: lateralDerProvider.profundidadllanta6,
                  height: 45,
                  labelText: 'Profundidad',
                  obscuretext: false,
                  onChanged: (value) {
                    lateralDerProvider.profundidadllanta6 = value;
                  },
                  validator: (value) {}),
            ),
          ],
        ),
      ],
    );
  }

  List<DropdownMenuItem<String>> get marcasLlantas {
    return const [
      DropdownMenuItem(value: 'Bridgestone', child: Text('Bridgestone')),
      DropdownMenuItem(value: 'Pirelli', child: Text('Pirelli')),
      DropdownMenuItem(value: 'Michelline', child: Text('Michelline')),
      DropdownMenuItem(value: 'Cooper', child: Text('Cooper')),
    ];
  }
}

class ImagenLatDer extends StatelessWidget {
  const ImagenLatDer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lateralDerProvider = Provider.of<LateralDerechoProvider>(context);
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
                      lateralDerProvider.image = image!.name;
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Elegir de la galeria'),
                    leading: const Icon(Icons.image_rounded),
                    onTap: () async {
                      final image = await Camara.takePhotoFromGallery();
                      lateralDerProvider.image = image!.name;
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Quitar imagen'),
                    leading: const Icon(Icons.delete_forever_rounded),
                    onTap: () {
                      lateralDerProvider.image = '';
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
          child: lateralDerProvider.image.isEmpty
              ? Image.asset(
                  'assets/images/logo.png',
                  width: 300,
                  height: 250,
                  fit: BoxFit.fill,
                )
              : File(path.join(lateralDerProvider.directoryPath,
                          lateralDerProvider.image))
                      .existsSync()
                  ? Image.file(
                      File(path.join(lateralDerProvider.directoryPath,
                          lateralDerProvider.image)),
                      width: 300,
                      height: 250,
                      fit: BoxFit.fill,
                    )
                  : FadeInImage.assetNetwork(
                      placeholder: 'assets',
                      image:
                          '${Enviroment.HOST_URL}/imagenes_operadores/${lateralDerProvider.image}',
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

class ImagenLatDerLlantas extends StatelessWidget {
  const ImagenLatDerLlantas({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lateralDerProvider = Provider.of<LateralDerechoProvider>(context);
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
                      lateralDerProvider.imagellantas = image!.name;
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Elegir de la galeria'),
                    leading: const Icon(Icons.image_rounded),
                    onTap: () async {
                      final image = await Camara.takePhotoFromGallery();
                      lateralDerProvider.imagellantas = image!.name;
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Quitar imagen'),
                    leading: const Icon(Icons.delete_forever_rounded),
                    onTap: () {
                      lateralDerProvider.imagellantas = '';
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
          child: lateralDerProvider.imagellantas.isEmpty
              ? Image.asset(
                  'assets/images/logo.png',
                  width: 300,
                  height: 250,
                  fit: BoxFit.fill,
                )
              : File(path.join(lateralDerProvider.directoryPath,
                          lateralDerProvider.imagellantas))
                      .existsSync()
                  ? Image.file(
                      File(path.join(lateralDerProvider.directoryPath,
                          lateralDerProvider.imagellantas)),
                      width: 300,
                      height: 250,
                      fit: BoxFit.fill,
                    )
                  : FadeInImage.assetNetwork(
                      placeholder: 'assets',
                      image:
                          '${Enviroment.HOST_URL}/imagenes_operadores/${lateralDerProvider.imagellantas}',
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
