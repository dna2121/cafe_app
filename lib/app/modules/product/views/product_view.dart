import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'package:cafe_app/widgets/primary_text_widget.dart';

import '../../../../widgets/item_card_widget.dart';
import '../../../../widgets/search_bar_widget.dart';
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
          const SearchBar(),
          const SizedBox(height: 15),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [ItemCard()],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.ADD_PRODUCT),
        child: const FaIcon(FontAwesomeIcons.plus),
      ),
    );
  }
}
