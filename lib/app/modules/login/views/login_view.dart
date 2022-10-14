import 'package:cafe_app/app/routes/app_pages.dart';
import 'package:cafe_app/constants/app_color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../widgets/submit_button_widget.dart';
import '../../../../widgets/text_form_widget.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(36, 60, 36, 40),
                child: Image.asset(
                  "assets/images/login.png",
                  height: 149,
                  width: 149,
                ),
              ),
              const Text(
                "Login",
                style: TextStyle(
                    color: AppColor.primaryColor,
                    fontFamily: 'Nunito',
                    fontSize: 32,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36),
                child: Column(
                  children: [
                    TextFormWidget(
                      icon: Icons.alternate_email,
                      hintText: "username",
                    ),
                    const SizedBox(height: 23),
                    TextFormWidget(
                      icon: Icons.lock_outline,
                      hintText: "password",
                    ),
                    const SizedBox(height: 23),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot password?",
                          style: TextStyle(
                              color: AppColor.primaryColor, fontSize: 12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 23),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36),
                child: SubmitButton(
                  height: 51,
                  width: double.infinity,
                  onPressed: () {
                    Get.toNamed(Routes.HOME);
                  },
                  text: "Login",
                ),
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Register",
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
