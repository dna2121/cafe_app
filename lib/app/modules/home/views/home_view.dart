import 'package:flutter/material.dart';

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
          child: BottomNavigationBar(
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex.value,
            backgroundColor: AppColor.navbarColor,
            selectedItemColor: AppColor.primaryColor,
            unselectedItemColor: AppColor.textColor,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                activeIcon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
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
