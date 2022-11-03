import 'package:cafe_app/constants/app_color.dart';
import 'package:cafe_app/widgets/primary_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/product_controller.dart';

class ProductView extends GetView<ProductController> {
  const ProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 54, 30, 15),
            child: Row(
              children: [
                Image.network(
                  'https://www.pngplay.com/wp-content/uploads/7/Cafe-Logo-Background-PNG-Image.png',
                  height: 90,
                ),
                const SizedBox(width: 15),
                const PrimaryTextWidget(text: 'Cafe App'),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              style: const TextStyle(color: AppColor.primaryColor),
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: const TextStyle(color: AppColor.textColor),
                suffixIcon: const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 22, 0),
                  child: Icon(
                    Icons.search,
                    color: AppColor.textColor,
                  ),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 9),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide: const BorderSide(color: AppColor.buttonColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide: const BorderSide(color: AppColor.buttonColor),
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.ADD_PRODUCT),
        child: const FaIcon(FontAwesomeIcons.plus),
      ),
    );
  }
}
