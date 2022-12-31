
import 'dart:io';


import 'package:path/path.dart' as path;
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:provider/provider.dart';

import '../components/components.dart';
import '../global/enviroment.dart';
import '../provider/providers.dart';
import '../widgets/widgets.dart';

class LlantasTab extends StatelessWidget {
  const LlantasTab({super.key});

  @override
  Widget build(BuildContext context) {
    final addintercambioProvider = Provider.of<AddIntercambioProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Center(
                child: Text('Posicion 1',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            TextButton(
                onPressed: () {
                  addintercambioProvider.addimage1 =
                      !addintercambioProvider.addimage1;
                },
                child: Text(addintercambioProvider.addimage1 ? '-' : '+',
                    style: const TextStyle(color: Colors.black, fontSize: 25)))
          ],
        ),
        const SizedBox(height: 10),
        addintercambioProvider.addimage1
            ? const AddImage(imageNumber: 1)
            : Container(),
        const SizedBox(height: 10),
        CustomDropDownButton(
            radius: 18,
            hint: 'Marca de la llanta',
            items: const [
              DropdownMenuItem(
                  value: 'Bridgestone', child: Text('Bridgestone')),
              DropdownMenuItem(value: 'Pirelli', child: Text('Pirelli')),
              DropdownMenuItem(value: 'Michelline', child: Text('Michelline')),
              DropdownMenuItem(value: 'Cooper', child: Text('Cooper')),
            ],
            onChanged: (value) {}),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Estado de la llanta',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Profundidad',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Center(
                child: Text('Posicion 2',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            TextButton(
                onPressed: () {
                  addintercambioProvider.addimage2 =
                      !addintercambioProvider.addimage2;
                },
                child: Text(addintercambioProvider.addimage2 ? '-' : '+',
                    style: const TextStyle(color: Colors.black, fontSize: 25)))
          ],
        ),
        const SizedBox(height: 10),
        addintercambioProvider.addimage2
            ? const AddImage(imageNumber: 2)
            : Container(),
        const SizedBox(height: 10),
        CustomDropDownButton(
            radius: 18,
            hint: 'Marca de la llanta',
            items: const [
              DropdownMenuItem(
                  value: 'Bridgestone', child: Text('Bridgestone')),
              DropdownMenuItem(value: 'Pirelli', child: Text('Pirelli')),
              DropdownMenuItem(value: 'Michelline', child: Text('Michelline')),
              DropdownMenuItem(value: 'Cooper', child: Text('Cooper')),
            ],
            onChanged: (value) {}),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Estado de la llanta',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Profundidad',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Center(
                child: Text('Posicion 3',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            TextButton(
                onPressed: () {
                  addintercambioProvider.addimage3 =
                      !addintercambioProvider.addimage3;
                },
                child: Text(addintercambioProvider.addimage3 ? '-' : '+',
                    style: const TextStyle(color: Colors.black, fontSize: 25)))
          ],
        ),
        const SizedBox(height: 10),
        addintercambioProvider.addimage3
            ? const AddImage(imageNumber: 3)
            : Container(),
        const SizedBox(height: 10),
        CustomDropDownButton(
            radius: 18,
            hint: 'Marca de la llanta',
            items: const [
              DropdownMenuItem(
                  value: 'Bridgestone', child: Text('Bridgestone')),
              DropdownMenuItem(value: 'Pirelli', child: Text('Pirelli')),
              DropdownMenuItem(value: 'Michelline', child: Text('Michelline')),
              DropdownMenuItem(value: 'Cooper', child: Text('Cooper')),
            ],
            onChanged: (value) {}),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Estado de la llanta',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Profundidad',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Center(
                child: Text('Posicion 4',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            TextButton(
                onPressed: () {
                  addintercambioProvider.addimage4 =
                      !addintercambioProvider.addimage4;
                },
                child: Text(addintercambioProvider.addimage4 ? '-' : '+',
                    style: const TextStyle(color: Colors.black, fontSize: 25)))
          ],
        ),
        const SizedBox(height: 10),
        addintercambioProvider.addimage4
            ? const AddImage(imageNumber: 4)
            : Container(),
        const SizedBox(height: 10),
        CustomDropDownButton(
            radius: 18,
            hint: 'Marca de la llanta',
            items: const [
              DropdownMenuItem(
                  value: 'Bridgestone', child: Text('Bridgestone')),
              DropdownMenuItem(value: 'Pirelli', child: Text('Pirelli')),
              DropdownMenuItem(value: 'Michelline', child: Text('Michelline')),
              DropdownMenuItem(value: 'Cooper', child: Text('Cooper')),
            ],
            onChanged: (value) {}),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Estado de la llanta',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Profundidad',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Center(
                child: Text('Posicion 5',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            TextButton(
                onPressed: () {
                  addintercambioProvider.addimage5 =
                      !addintercambioProvider.addimage5;
                },
                child: Text(addintercambioProvider.addimage5 ? '-' : '+',
                    style: const TextStyle(color: Colors.black, fontSize: 25)))
          ],
        ),
        const SizedBox(height: 10),
        addintercambioProvider.addimage5
            ? const AddImage(imageNumber: 5)
            : Container(),
        const SizedBox(height: 10),
        CustomDropDownButton(
            radius: 18,
            hint: 'Marca de la llanta',
            items: const [
              DropdownMenuItem(
                  value: 'Bridgestone', child: Text('Bridgestone')),
              DropdownMenuItem(value: 'Pirelli', child: Text('Pirelli')),
              DropdownMenuItem(value: 'Michelline', child: Text('Michelline')),
              DropdownMenuItem(value: 'Cooper', child: Text('Cooper')),
            ],
            onChanged: (value) {}),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Estado de la llanta',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Profundidad',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Center(
                child: Text('Posicion 6',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            TextButton(
                onPressed: () {
                  addintercambioProvider.addimage6 =
                      !addintercambioProvider.addimage6;
                },
                child: Text(addintercambioProvider.addimage6 ? '-' : '+',
                    style: const TextStyle(color: Colors.black, fontSize: 25)))
          ],
        ),
        const SizedBox(height: 10),
        addintercambioProvider.addimage6
            ? const AddImage(imageNumber: 6)
            : Container(),
        const SizedBox(height: 10),
        CustomDropDownButton(
            radius: 18,
            hint: 'Marca de la llanta',
            items: const [
              DropdownMenuItem(
                  value: 'Bridgestone', child: Text('Bridgestone')),
              DropdownMenuItem(value: 'Pirelli', child: Text('Pirelli')),
              DropdownMenuItem(value: 'Michelline', child: Text('Michelline')),
              DropdownMenuItem(value: 'Cooper', child: Text('Cooper')),
            ],
            onChanged: (value) {}),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Estado de la llanta',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Profundidad',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Center(
                child: Text('Posicion 7',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            TextButton(
                onPressed: () {
                  addintercambioProvider.addimage7 =
                      !addintercambioProvider.addimage7;
                },
                child: Text(addintercambioProvider.addimage7 ? '-' : '+',
                    style: const TextStyle(color: Colors.black, fontSize: 25)))
          ],
        ),
        const SizedBox(height: 10),
        addintercambioProvider.addimage7
            ? const AddImage(imageNumber: 7)
            : Container(),
        const SizedBox(height: 10),
        CustomDropDownButton(
            radius: 18,
            hint: 'Marca de la llanta',
            items: const [
              DropdownMenuItem(
                  value: 'Bridgestone', child: Text('Bridgestone')),
              DropdownMenuItem(value: 'Pirelli', child: Text('Pirelli')),
              DropdownMenuItem(value: 'Michelline', child: Text('Michelline')),
              DropdownMenuItem(value: 'Cooper', child: Text('Cooper')),
            ],
            onChanged: (value) {}),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Estado de la llanta',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Profundidad',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Center(
                child: Text('Posicion 8',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            TextButton(
                onPressed: () {
                  addintercambioProvider.addimage8 =
                      !addintercambioProvider.addimage8;
                },
                child: Text(addintercambioProvider.addimage8 ? '-' : '+',
                    style: const TextStyle(color: Colors.black, fontSize: 25)))
          ],
        ),
        const SizedBox(height: 10),
        addintercambioProvider.addimage8
            ? const AddImage(imageNumber: 8)
            : Container(),
        const SizedBox(height: 10),
        CustomDropDownButton(
            radius: 18,
            hint: 'Marca de la llanta',
            items: const [
              DropdownMenuItem(
                  value: 'Bridgestone', child: Text('Bridgestone')),
              DropdownMenuItem(value: 'Pirelli', child: Text('Pirelli')),
              DropdownMenuItem(value: 'Michelline', child: Text('Michelline')),
              DropdownMenuItem(value: 'Cooper', child: Text('Cooper')),
            ],
            onChanged: (value) {}),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Estado de la llanta',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Profundidad',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
          ],
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}


class AddImage extends StatelessWidget {
  final int imageNumber;

  const AddImage({
    Key? key,
    required this.imageNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final addintercambioProvider = Provider.of<AddIntercambioProvider>(context);
    switch (imageNumber) {
      case 1:
        return GestureDetector(
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
                          addintercambioProvider.image1 = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Elegir de la galeria'),
                        leading: const Icon(Icons.image_rounded),
                        onTap: () async {
                          final image = await Camara.takePhotoFromGallery();
                          addintercambioProvider.image1 = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Quitar imagen'),
                        leading: const Icon(Icons.delete_forever_rounded),
                        onTap: () {
                          addintercambioProvider.image1 = '';
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
              child: addintercambioProvider.image1.isEmpty
                  ? Image.asset(
                      'assets/images/logo.png',
                      width: 300,
                      height: 250,
                      fit: BoxFit.fill,
                    )
                  : File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.image1))
                          .existsSync()
                      ? Image.file(
                          File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.image1)),
                          width: 300,
                          height: 250,
                          fit: BoxFit.fill,
                        )
                      : FadeInImage.assetNetwork(
                          placeholder: 'assets',
                          image:
                              '${Enviroment.HOST_URL}/imagenes_operadores/${addintercambioProvider.image1}',
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
      case 2:
        return GestureDetector(
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
                          addintercambioProvider.image2 = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Elegir de la galeria'),
                        leading: const Icon(Icons.image_rounded),
                        onTap: () async {
                          final image = await Camara.takePhotoFromGallery();
                          addintercambioProvider.image2 = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Quitar imagen'),
                        leading: const Icon(Icons.delete_forever_rounded),
                        onTap: () {
                          addintercambioProvider.image2 = '';
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
              child: addintercambioProvider.image2.isEmpty
                  ? Image.asset(
                      'assets/images/logo.png',
                      width: 300,
                      height: 250,
                      fit: BoxFit.fill,
                    )
                  : File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.image2))
                          .existsSync()
                      ? Image.file(
                          File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.image2)),
                          width: 300,
                          height: 250,
                          fit: BoxFit.fill,
                        )
                      : FadeInImage.assetNetwork(
                          placeholder: 'assets',
                          image:
                              '${Enviroment.HOST_URL}/imagenes_operadores/${addintercambioProvider.image2}',
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
      case 3:
        return GestureDetector(
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
                          addintercambioProvider.image3 = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Elegir de la galeria'),
                        leading: const Icon(Icons.image_rounded),
                        onTap: () async {
                          final image = await Camara.takePhotoFromGallery();
                          addintercambioProvider.image3 = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Quitar imagen'),
                        leading: const Icon(Icons.delete_forever_rounded),
                        onTap: () {
                          addintercambioProvider.image3 = '';
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
              child: addintercambioProvider.image3.isEmpty
                  ? Image.asset(
                      'assets/images/logo.png',
                      width: 300,
                      height: 250,
                      fit: BoxFit.fill,
                    )
                  : File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.image3))
                          .existsSync()
                      ? Image.file(
                          File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.image3)),
                          width: 300,
                          height: 250,
                          fit: BoxFit.fill,
                        )
                      : FadeInImage.assetNetwork(
                          placeholder: 'assets',
                          image:
                              '${Enviroment.HOST_URL}/imagenes_operadores/${addintercambioProvider.image3}',
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
      case 4:
        return GestureDetector(
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
                          addintercambioProvider.image4 = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Elegir de la galeria'),
                        leading: const Icon(Icons.image_rounded),
                        onTap: () async {
                          final image = await Camara.takePhotoFromGallery();
                          addintercambioProvider.image4 = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Quitar imagen'),
                        leading: const Icon(Icons.delete_forever_rounded),
                        onTap: () {
                          addintercambioProvider.image4 = '';
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
              child: addintercambioProvider.image4.isEmpty
                  ? Image.asset(
                      'assets/images/logo.png',
                      width: 300,
                      height: 250,
                      fit: BoxFit.fill,
                    )
                  : File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.image4))
                          .existsSync()
                      ? Image.file(
                          File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.image4)),
                          width: 300,
                          height: 250,
                          fit: BoxFit.fill,
                        )
                      : FadeInImage.assetNetwork(
                          placeholder: 'assets',
                          image:
                              '${Enviroment.HOST_URL}/imagenes_operadores/${addintercambioProvider.image4}',
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
      case 5:
        return GestureDetector(
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
                          addintercambioProvider.image5 = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Elegir de la galeria'),
                        leading: const Icon(Icons.image_rounded),
                        onTap: () async {
                          final image = await Camara.takePhotoFromGallery();
                          addintercambioProvider.image5 = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Quitar imagen'),
                        leading: const Icon(Icons.delete_forever_rounded),
                        onTap: () {
                          addintercambioProvider.image5 = '';
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
              child:addintercambioProvider.image5.isEmpty
                  ? Image.asset(
                      'assets/images/logo.png',
                      width: 300,
                      height: 250,
                      fit: BoxFit.fill,
                    )
                  : File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.image5))
                          .existsSync()
                      ? Image.file(
                          File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.image5)),
                          width: 300,
                          height: 250,
                          fit: BoxFit.fill,
                        )
                      : FadeInImage.assetNetwork(
                          placeholder: 'assets',
                          image:
                              '${Enviroment.HOST_URL}/imagenes_operadores/${addintercambioProvider.image5}',
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
      case 6:
        return GestureDetector(
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
                          addintercambioProvider.image6 = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Elegir de la galeria'),
                        leading: const Icon(Icons.image_rounded),
                        onTap: () async {
                          final image = await Camara.takePhotoFromGallery();
                          addintercambioProvider.image6 = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Quitar imagen'),
                        leading: const Icon(Icons.delete_forever_rounded),
                        onTap: () {
                          addintercambioProvider.image6 = '';
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
              child:addintercambioProvider.image6.isEmpty
                  ? Image.asset(
                      'assets/images/logo.png',
                      width: 300,
                      height: 250,
                      fit: BoxFit.fill,
                    )
                  : File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.image6))
                          .existsSync()
                      ? Image.file(
                          File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.image6)),
                          width: 300,
                          height: 250,
                          fit: BoxFit.fill,
                        )
                      : FadeInImage.assetNetwork(
                          placeholder: 'assets',
                          image:
                              '${Enviroment.HOST_URL}/imagenes_operadores/${addintercambioProvider.image6}',
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
      case 7:
        return GestureDetector(
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
                          addintercambioProvider.image7 = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Elegir de la galeria'),
                        leading: const Icon(Icons.image_rounded),
                        onTap: () async {
                          final image = await Camara.takePhotoFromGallery();
                          addintercambioProvider.image7 = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Quitar imagen'),
                        leading: const Icon(Icons.delete_forever_rounded),
                        onTap: () {
                          addintercambioProvider.image7 = '';
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
              child: addintercambioProvider.image7.isEmpty
                  ? Image.asset(
                      'assets/images/logo.png',
                      width: 300,
                      height: 250,
                      fit: BoxFit.fill,
                    )
                  : File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.image7))
                          .existsSync()
                      ? Image.file(
                          File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.image7)),
                          width: 300,
                          height: 250,
                          fit: BoxFit.fill,
                        )
                      : FadeInImage.assetNetwork(
                          placeholder: 'assets',
                          image:
                              '${Enviroment.HOST_URL}/imagenes_operadores/${addintercambioProvider.image7}',
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
      case 8:
        return GestureDetector(
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
                          addintercambioProvider.image8 = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Elegir de la galeria'),
                        leading: const Icon(Icons.image_rounded),
                        onTap: () async {
                          final image = await Camara.takePhotoFromGallery();
                          addintercambioProvider.image8 = image!.name;
                          Navigator.pop(context);
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Quitar imagen'),
                        leading: const Icon(Icons.delete_forever_rounded),
                        onTap: () {
                          addintercambioProvider.image8 = '';
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
              child:addintercambioProvider.image8.isEmpty
                  ? Image.asset(
                      'assets/images/logo.png',
                      width: 300,
                      height: 250,
                      fit: BoxFit.fill,
                    )
                  : File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.image8))
                          .existsSync()
                      ? Image.file(
                          File(path.join(addintercambioProvider.directoryPath,
                              addintercambioProvider.image8)),
                          width: 300,
                          height: 250,
                          fit: BoxFit.fill,
                        )
                      : FadeInImage.assetNetwork(
                          placeholder: 'assets',
                          image:
                              '${Enviroment.HOST_URL}/imagenes_operadores/${addintercambioProvider.image8}',
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
      default:
        return Container();
    }
  }
}

