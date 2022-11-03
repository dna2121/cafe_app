import 'package:flutter/material.dart';

import '../constants/app_color.dart';
import '../widgets/text_header_widget.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    required this.name,
    required this.price,
  }) : super(key: key);

  final String name;
  final String price;

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
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 7,
            separatorBuilder: (context, index) => const SizedBox(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
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
                      name,
                      style: const TextStyle(
                          fontSize: 12,
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 12,
                        color: AppColor.textColor,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 22)
      ],
    );
  }
}
