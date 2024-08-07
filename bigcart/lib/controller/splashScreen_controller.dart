import 'dart:async';

import 'package:bigcart/core/constant/routes.dart';
import 'package:bigcart/core/services/services.dart';
import 'package:get/get.dart';

class SplashControllerImp extends GetxController {
  var logoSize = 1.0.obs;

  MyServices myServices = Get.find();

  @override
  void onInit() {
    super.onInit();

    Future.delayed(const Duration(milliseconds: 1000), () {
      logoSize.value = 3.0;
    });

    gotobording();
  }

  gotobording() {
    Timer(const Duration(seconds: 3), () {
      Get.toNamed(AppRout.OnBoarding);
    });
  }
}
