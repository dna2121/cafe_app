import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../widgets/primary_text_widget.dart';
import '../../../../widgets/submit_button_widget.dart';
import '../../../../widgets/text_field_product_widget.dart';
import '../controllers/add_product_controller.dart';
import '../../../../constants/app_color.dart';

class AddProductView extends GetView<AddProductController> {
  const AddProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 25, top: 25),
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
            ),
            const PrimaryTextWidget(
              text: 'Add Product',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  TextFieldProduct(
                    labelText: 'Name',
                    controller: controller.nameC,
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 50),
                  TextFieldProduct(
                    labelText: 'Price',
                    controller: controller.priceC,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                  ),
                  const SizedBox(height: 88),
                  SubmitButton(
                    onPressed: onPressedCreate,
                    text: "Submit",
                    width: 249,
                    height: 49,
                  )
                ],
              ),
            ),
            const SizedBox(),
            const SizedBox(),
          ],
        ),
      ),
    );
  }

  void onPressedCreate() {
    if (controller.nameC.text.isEmpty & controller.priceC.text.isEmpty) {
      Get.snackbar(
        "Empty",
        "Product's Name and Price are required.",
        margin: const EdgeInsets.all(20),
      );
    } else if (controller.nameC.text.isNotEmpty &
        controller.priceC.text.isEmpty) {
      Get.snackbar(
        "Empty",
        "Product's Price is required.",
        margin: const EdgeInsets.all(20),
      );
    } else if (controller.nameC.text.isEmpty &
        controller.priceC.text.isNotEmpty) {
      Get.snackbar(
        "Empty",
        "Product's Name is required.",
        margin: const EdgeInsets.all(20),
      );
    } else {
      controller.addProduct(
        controller.nameC.text,
        int.parse(controller.priceC.text),
      );
    }
  }
}
