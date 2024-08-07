// ignore_for_file: prefer_const_constructors

import 'package:bigcart/controller/auth/restpassword_controller.dart';
import 'package:bigcart/core/constant/imageasset.dart';
import 'package:bigcart/view/widget/auth/button_login.dart';
import 'package:bigcart/view/widget/auth/text_form_fild_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmPassWord extends StatelessWidget {
  const ConfirmPassWord({super.key});

  @override
  Widget build(BuildContext context) {
    ResrPassowrdControllerImp controller = Get.put(ResrPassowrdControllerImp());
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Container(
              height: 200,
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                AppImageAsset.logoTrip,
                height: 70,
              ),
            ),
            Container(
              height: height / 2.6,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Text(
                    "أدخل كلمة المرور الجديدة",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormFieldLogin(
                    hint: "ادخل كلمة المرور الجديدة",
                    icon: Icons.lock_outline_rounded,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    controller: controller.password,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormFieldLogin(
                    hint: "تأكيد كلمة المرور",
                    icon: Icons.lock_outline_rounded,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    controller: controller.password,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonLogin(
                    txt: "تأكيد",
                    onPressed: () => controller.goTSuccessRestPassword(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
