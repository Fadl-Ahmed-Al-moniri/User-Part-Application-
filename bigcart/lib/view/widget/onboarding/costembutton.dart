import 'package:bigcart/controller/onboarding_controller.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnboarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.next();
      },
      child: Container(
        height: 60,
        width: 380,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              colors: [AppColor.lightGreen, AppColor.middleLightGreen],
              begin: AlignmentDirectional.centerStart,
              end: AlignmentDirectional.centerEnd,
            ),
            boxShadow: const [
              BoxShadow(
                  color: AppColor.Black,
                  blurRadius: 5,
                  spreadRadius: 0,
                  offset: Offset(0, 8))
            ]),
        margin: const EdgeInsets.only(bottom: 20, left: 25, right: 25),
        child: Center(
          child: Text(
            'التالي',
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
      ),
    );
  }
}
