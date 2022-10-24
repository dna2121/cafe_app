import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_product_controller.dart';
import '../../../../constants/app_color.dart';

class AddProductView extends GetView<AddProductController> {
  const AddProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 50),
            child: Container(
              decoration: BoxDecoration(
                color: AppColor.navbarColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
              ),
            ),
          ),
          const SizedBox(width: 20),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 50, right: 30),
              child: Text(
                "Add Product",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 32,
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
//             child: TextField(
//               decoration: InputDecoration(
//                 hintText: "Product Name",
//                 filled: true,
//                 fillColor: Colors.grey[200],
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20),
//                   borderSide: const BorderSide(style: BorderStyle.none),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
