import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../../../../constants/app_color.dart';
import '../../product/views/product_view.dart';
import '../../profile/views/profile_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: SizedBox(
            height: 69,
            child: BottomNavigationBar(
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
        ),
      ),
      body: Obx(
        () => IndexedStack(
          index: controller.tabIndex.value,
          children: const [ProductView(), ProfileView()],
        ),
      ),
    );
  }
}
