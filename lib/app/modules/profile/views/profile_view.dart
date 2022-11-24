import 'package:cafe_app/constants/app_color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfileView'),
        centerTitle: true,
        backgroundColor: AppColor.buttonColor,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: const Icon(Icons.camera_alt_rounded),
                    title: const Text('Camera'),
                    onTap: () {
                      final ctrl = Get.put(ProfileController());

                      ctrl.pickImage(ImageSource.camera);
                      Get.back();
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.photo),
                    title: const Text('Gallery'),
                    onTap: () {
                      final ctrl = Get.put(ProfileController());

                      ctrl.pickImage(ImageSource.gallery);
                      Get.back();
                    },
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.upload_rounded),
      ),
    );
  }
}
