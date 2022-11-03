import 'package:flutter/material.dart';

import '../constants/app_color.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        style: const TextStyle(color: AppColor.primaryColor),
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: const TextStyle(color: AppColor.textColor),
          suffixIcon: const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 22, 0),
            child: Icon(
              Icons.search,
              color: AppColor.textColor,
            ),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 28, vertical: 9),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: const BorderSide(color: AppColor.buttonColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: const BorderSide(color: AppColor.buttonColor),
          ),
        ),
      ),
    );
  }
}
