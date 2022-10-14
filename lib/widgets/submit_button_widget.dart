// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../constants/app_color.dart';

class SubmitButton extends StatelessWidget {
  SubmitButton(
      {Key? key,
      this.height,
      this.width,
      required this.onPressed,
      required this.text})
      : super(key: key);

  double? height;
  double? width;
  void Function() onPressed;
  String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColor.buttonColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.0),
            ),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
