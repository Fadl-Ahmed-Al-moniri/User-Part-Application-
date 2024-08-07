// ignore_for_file: must_be_immutable
import 'package:bigcart/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class TxtField extends StatelessWidget {
  TxtField({
    super.key,
    required this.hintText,
    this.controller,
  });
  TextEditingController? controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(100),
              bottomLeft: Radius.circular(100),
              topRight: Radius.circular(100))),
      child: InkWell(
        child: TextField(
          controller: controller,
          textAlign: TextAlign.right,
          cursorColor: AppColor.iconColor,
          decoration: InputDecoration(
            suffixIcon: const Icon(
              Icons.search_rounded,
              color: AppColor.iconColor,
              size: 25,
            ),
            hintText: hintText,
            hintTextDirection: TextDirection.rtl,
            hintStyle: Theme.of(context).textTheme.labelSmall,
            border: InputBorder.none,
            errorStyle: const TextStyle(
                color: Colors.redAccent,
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
