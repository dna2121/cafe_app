import 'package:cafe_app/constants/app_color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
          final ctrl = Get.put(ProfileController());
          ctrl.uploadFile();
        },
        child: const Icon(Icons.upload_rounded),
      ),
    );
  }
}
