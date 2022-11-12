import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/app_color.dart';

class EditProductController extends GetxController {
  late TextEditingController nameC;
  late TextEditingController priceC;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<DocumentSnapshot<Object?>> getData(String docID) async {
    DocumentReference docRef = firestore.collection("coffee").doc(docID);
    return docRef.get();
  }

  void editProduct(String name, int price, String docID) {
    DocumentReference coffee = firestore.collection("coffee").doc(docID);

    try {
      coffee.update({
        "name": name,
        "price": price,
      });

      Get.defaultDialog(
          title: 'Success',
          middleText: 'Product updated.',
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
        middleText: 'Product not updated.',
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
