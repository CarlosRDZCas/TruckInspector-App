import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart ';
import 'package:path/path.dart' as path;

class Camara {
  static Future<XFile?> takePhoto() async {
    final ImagePicker picker = ImagePicker();
    final directory =
        '${(await getApplicationDocumentsDirectory()).path}\\EditImages';
    if (!await Directory(directory).exists()) {
      await Directory(directory).create(recursive: true);
    }
    final XFile? photo = await picker.pickImage(source: ImageSource.camera);
    String newPath = path.join(directory, photo!.name);
    File file = await File(photo.path).copy(newPath);
    return XFile(file.path);
  }

  static Future<XFile?> takePhotoFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final directory =
        '${(await getApplicationDocumentsDirectory()).path}\\EditImages';
    if (!await Directory(directory).exists()) {
      await Directory(directory).create(recursive: true);    }

    final XFile? photo = await picker.pickImage(source: ImageSource.gallery);
    String newPath = path.join(directory, photo!.name);
    File file = await File(photo.path).copy(newPath);
    return XFile(file.path);
  }
}
