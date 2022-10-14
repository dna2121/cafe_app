import 'package:cafe_app/constants/app_color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../widgets/text_form_widget.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 47, horizontal: 36),
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 36, vertical: 40),
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
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36),
                child: SizedBox(
                  height: 51,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColor.buttonColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                      ),
                    ),
                    child: const Text("Login"),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
