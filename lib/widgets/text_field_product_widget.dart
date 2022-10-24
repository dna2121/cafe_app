import 'package:flutter/material.dart';

import '../constants/app_color.dart';

class TextFieldProduct extends StatelessWidget {
  const TextFieldProduct(
      {Key? key,
      required this.labelText,
      this.controller,
      this.keyboardType,
      this.textInputAction})
      : super(key: key);

  final String labelText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        labelText: labelText,
        floatingLabelStyle: const TextStyle(color: AppColor.primaryColor),
        filled: true,
        fillColor: Colors.grey[200],
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.primaryColor),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.primaryColor),
        ),
      ),
    );
  }
}
