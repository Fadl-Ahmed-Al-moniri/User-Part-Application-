import 'package:bigcart/controller/onboarding_controller.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/core/static/onboardingList.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboarding extends GetView<OnBoardingControllerImp> {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    OnBoardingControllerImp controllerImp = Get.put(OnBoardingControllerImp());
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: PageView.builder(
          controller: controller.pageController,
          onPageChanged: (value) {
            controller.onPageChang(value);
          },
          itemCount: onBoardingList.length,
          itemBuilder: (context, i) {
            return SafeArea(
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    top: 0,
                    height: height,
                    width: width,
                    child: Image.asset(
                      onBoardingList[i].image!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 50,
                    width: width / 1.5,
                    child: Text(
                      onBoardingList[i].title!,
                      style: Theme.of(context).textTheme.titleMedium,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onBoardingList[i].body == null
                      ? Positioned(
                          top: 100,
                          width: width / 3,
                          child: Image.asset(
                            onBoardingList[i].imagebody!,
                            fit: BoxFit.cover,
                          ))
                      : Positioned(
                          top: 150,
                          width: width,
                          child: Text(
                            onBoardingList[i].body!,
                            style: Theme.of(context).textTheme.bodySmall,
                            textAlign: TextAlign.center,
                          )),
                  Positioned(
                    bottom: height / 8,
                    child: GetBuilder<OnBoardingControllerImp>(
                      builder: (controller) => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...List.generate(
                            onBoardingList.length,
                            (index) => AnimatedContainer(
                              duration: const Duration(milliseconds: 900),
                              margin: const EdgeInsets.only(right: 5),
                              width: 10.83,
                              height: 10,
                              decoration: BoxDecoration(
                                color: controller.currentPage == index
                                    ? AppColor.middledarkGreen
                                    : AppColor.whitgray,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    width: width,
                    bottom: 2,
                    child: InkWell(
                      onTap: () {
                        controller.next();
                      },
                      child: Container(
                        height: 60,
                        width: 380,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                              colors: [
                                AppColor.lightGreen,
                                AppColor.middleLightGreen
                              ],
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
                        margin: const EdgeInsets.only(
                            bottom: 20, left: 25, right: 25),
                        child: Center(
                          child: Text(
                            'التالي',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
