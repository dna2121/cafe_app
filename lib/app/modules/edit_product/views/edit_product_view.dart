import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../constants/app_color.dart';
import '../../../../widgets/primary_text_widget.dart';
import '../../../../widgets/submit_button_widget.dart';
import '../../../../widgets/text_field_product_widget.dart';
import '../controllers/edit_product_controller.dart';

class EditProductView extends GetView<EditProductController> {
  const EditProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: controller.getData(Get.arguments),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              var data = snapshot.data!.data() as Map<String, dynamic>;

              controller.nameC.text = data["name"];
              controller.priceC.text = data["price"].toString();

              return Column(
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
                    text: 'Edit Product',
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
                          onPressed: () {
                            controller.editProduct(
                              controller.nameC.text,
                              int.parse(controller.priceC.text),
                              Get.arguments,
                            );
                          },
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
              );
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
