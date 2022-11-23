import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/app_color.dart';

class ProductController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  //one time read
  Future<QuerySnapshot<Object?>> getData() async {
    CollectionReference coffee = firestore.collection('coffee');

    return coffee.get();
  }

  //realtime changes
  Stream<QuerySnapshot<Object?>> streamData() {
    CollectionReference coffee = firestore.collection('coffee');

    return coffee.snapshots();
  }

  //delete
  void deleteProduct(String docID) {
    DocumentReference documentReference =
        firestore.collection("coffee").doc(docID);

    try {
      Get.defaultDialog(
          title: "Delete Data",
          middleText: "Do you want to delete the data?",
          onConfirm: () async {
            await documentReference.delete();
            Get.back();
          },
          textConfirm: "Yes",
          textCancel: "No",
          confirmTextColor: const Color.fromARGB(255, 255, 255, 255),
          cancelTextColor: AppColor.buttonColor,
          buttonColor: AppColor.buttonColor);
    } catch (e) {
      // print(e);
      Get.defaultDialog(
        title: "Something's wrong.",
        middleText: "Delete data failed.",
      );
    }
  }
}
