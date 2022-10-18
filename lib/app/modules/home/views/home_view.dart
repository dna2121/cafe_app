import 'package:cafe_app/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex.value,
          backgroundColor: AppColor.navbarColor,
          selectedItemColor: AppColor.primaryColor,
          unselectedItemColor: AppColor.textColor,
          items: const [
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.house),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.user),
              activeIcon: FaIcon(FontAwesomeIcons.solidUser),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
