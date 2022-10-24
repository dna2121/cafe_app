import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_product_controller.dart';
import '../../../../constants/app_color.dart';

class AddProductView extends GetView<AddProductController> {
  const AddProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 50),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.navbarColor,
                    borderRadius: BorderRadius.circular(11),
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
          const SizedBox(height: 75),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Name",
                filled: true,
                fillColor: Colors.grey[200],
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColor.primaryColor),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColor.primaryColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
