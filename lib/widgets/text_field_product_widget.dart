import 'package:flutter/material.dart';

import '../constants/app_color.dart';

class TextFieldProduct extends StatelessWidget {
  const TextFieldProduct({
    Key? key,
    required this.labelText,
  }) : super(key: key);

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
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
