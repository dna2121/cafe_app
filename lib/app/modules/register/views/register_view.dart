import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../constants/app_color.dart';
import '../../../../widgets/submit_button_widget.dart';
import '../../../../widgets/text_form_widget.dart';
import '../../../routes/app_pages.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(36, 113, 36, 30),
                child: Text(
                  "Register",
                  style: TextStyle(
                      color: AppColor.primaryColor,
                      fontFamily: 'Nunito',
                      fontSize: 32,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36),
                child: Column(
                  children: [
                    TextFormWidget(
                      icon: Icons.person_outline,
                      hintText: "full name",
                    ),
                    const SizedBox(height: 23),
                    TextFormWidget(
                      icon: Icons.mail_outline,
                      hintText: "email",
                    ),
                    const SizedBox(height: 23),
                    TextFormWidget(
                      icon: Icons.alternate_email,
                      hintText: "username",
                    ),
                    const SizedBox(height: 23),
                    TextFormWidget(
                      icon: Icons.lock_outline,
                      hintText: "password",
                    ),
                    const SizedBox(height: 37),
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
                  text: "Register",
                ),
              ),
              const SizedBox(height: 37),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.LOGIN);
                    },
                    child: const Text(
                      "Login",
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
