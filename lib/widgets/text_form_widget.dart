// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../constants/app_color.dart';

class TextFormWidget extends StatelessWidget {
  TextFormWidget({Key? key, required this.icon, this.hintText}) : super(key: key);

  IconData icon;
  String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: AppColor.primaryColor),
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: AppColor.buttonColor,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(color: AppColor.buttonColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColor.buttonColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColor.buttonColor),
        ),
      ),
    );
  }
}
