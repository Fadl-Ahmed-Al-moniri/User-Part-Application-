import 'package:bigcart/core/constant/routes.dart';
import 'package:bigcart/core/services/services.dart';
import 'package:bigcart/core/static/onboardingList.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


abstract class OnBoardingController extends GetxController {
  next();
  onPageChang(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;

  MyServices myServices = Get.find();

  @override
  next() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
      // myServices.sharedPreferences.setString("onboarding", "1");
      Get.offAllNamed(AppRout.login);
    }
    pageController.animateToPage(currentPage,
        duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
  }

  @override
  onPageChang(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
