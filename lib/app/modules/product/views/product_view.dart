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
      body: Padding(
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.buttonColor,
        onPressed: () => Get.toNamed(Routes.ADD_PRODUCT),
        child: const FaIcon(FontAwesomeIcons.plus),
      ),
    );
  }
}
