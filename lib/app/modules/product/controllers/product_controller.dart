import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

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
}
