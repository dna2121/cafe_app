import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class AddProductController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void addProduct(String name, int price) {
    CollectionReference coffee = firestore.collection("coffee");

    coffee.add({
      "name": name,
      "price": price,
    });

  }
}
