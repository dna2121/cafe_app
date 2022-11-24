import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  final storageRef = firebase_storage.FirebaseStorage.instance.ref();

  //file picker
  void uploadFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      File file = File(result.files.single.path!);
      String fileName = result.files.first.name;

      try {
        await firebase_storage.FirebaseStorage.instance
            .ref(fileName)
            .putFile(file);
        Get.snackbar("Success", "File uploaded.");
      } on firebase_storage.FirebaseException catch (e) {
        print(e);
      }
    } else {
      //user canceled the picker
    }
  }

  //image picker
  void pickImage(ImageSource source) async {
    final XFile? result = await ImagePicker().pickImage(source: source);

    if (result != null) {
      File filePath = File(result.path);
      String fileName = result.name;

      try {
        await firebase_storage.FirebaseStorage.instance
            .ref(fileName)
            .putFile(filePath);
        Get.snackbar("Success", "File uploaded");
      } on firebase_storage.FirebaseException catch (e) {
        //failed
        print(e);
      }
    }
  }
}
