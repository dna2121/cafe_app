import 'package:flutter/material.dart';

import '../constants/app_color.dart';

class TextHeader extends StatelessWidget {
  const TextHeader({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: const TextStyle(
            color: AppColor.textColor, fontWeight: FontWeight.w700),
      ),
    );
  }
}
