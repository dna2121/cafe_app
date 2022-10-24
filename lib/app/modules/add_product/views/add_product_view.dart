import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../widgets/submit_button_widget.dart';
import '../../../../widgets/text_field_product_widget.dart';
import '../controllers/add_product_controller.dart';
import '../../../../constants/app_color.dart';

class AddProductView extends GetView<AddProductController> {
  const AddProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                TextFieldProduct(
                  labelText: 'Name',
                  controller: controller.nameC,
                ),
                const SizedBox(height: 50),
                TextFieldProduct(
                  labelText: 'Price',
                  controller: controller.priceC,
                ),
                const SizedBox(height: 88),
                SubmitButton(
                  onPressed: () {
                    controller.addProduct(
                        controller.nameC.text, controller.priceC.text);
                  },
                  text: "Submit",
                  width: 249,
                  height: 49,
                )
              ],
            ),
          ),
          const SizedBox(),
        ],
      ),
    );
  }
}
