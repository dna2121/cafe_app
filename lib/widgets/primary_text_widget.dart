import 'package:flutter/material.dart';

import '../constants/app_color.dart';

class PrimaryTextWidget extends StatelessWidget {
  const PrimaryTextWidget({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
          fontSize: 32,
          color: AppColor.primaryColor,
          fontWeight: FontWeight.bold),
    );
  }
}
