import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../app/modules/product/controllers/product_controller.dart';
import '../app/routes/app_pages.dart';
import '../constants/app_color.dart';
import '../widgets/text_header_widget.dart';

class ItemCard extends StatelessWidget {
  ItemCard({Key? key}) : super(key: key);

  final controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(30, 0, 30, 20),
          child: TextHeader(text: "Coffee"),
        ),
        SizedBox(
          height: 160,
          child: StreamBuilder<QuerySnapshot<Object?>>(
            stream: controller.streamData(),
            builder: (context, snapshot) {
              var listAllData = snapshot.data!.docs;

              if (snapshot.connectionState == ConnectionState.active) {
                return ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: listAllData.length,
                  separatorBuilder: (context, index) => const SizedBox(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: InkWell(
                        onTap: () => Get.toNamed(Routes.EDIT_PRODUCT),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(28),
                              child: Image.network(
                                'https://majalah.ottenstatic.com/uploads/2016/09/espresso-013-1024x681.jpg',
                                height: 99,
                                width: 99,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "${(listAllData[index].data() as Map<String, dynamic>)["name"]}",
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: AppColor.primaryColor,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(height: 7),
                            Text(
                              "Rp. ${(listAllData[index].data() as Map<String, dynamic>)["price"]}",
                              style: const TextStyle(
                                fontSize: 12,
                                color: AppColor.textColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ),
        const SizedBox(height: 22)
      ],
    );
  }
}
