import 'package:cafe_app/constants/app_color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddProductController extends GetxController {
  late TextEditingController nameC;
  late TextEditingController priceC;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void addProduct(String name, int price) {
    CollectionReference coffee = firestore.collection("coffee");

    try {
      coffee.add({
        "name": name,
        "price": price,
      });

      Get.defaultDialog(
          title: 'Success',
          middleText: 'Product added.',
          onConfirm: () {
            nameC.clear();
            priceC.clear();
            Get.back(); //close dialog
            Get.back(); //back to home
          },
          textConfirm: 'Okay',
          confirmTextColor: const Color.fromARGB(255, 255, 255, 255),
          buttonColor: AppColor.buttonColor);
    } catch (e) {
      Get.defaultDialog(
        title: 'Failed',
        middleText: 'Product not added.',
      );
    }
  }

  @override
  void onInit() {
    nameC = TextEditingController();
    priceC = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    nameC.dispose();
    priceC.dispose();
    super.onClose();
  }
}
