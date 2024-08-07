// ignore_for_file: prefer_const_constructors

import 'package:bigcart/core/constant/color.dart';
import 'package:flutter/material.dart';

TextStyle adscontent = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 16,
  color: AppColor.white.withAlpha(250),
  fontFamily: 'Almarai',
);

TextStyle adsButtoncontent = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 14,
  color: AppColor.white.withAlpha(250),
  fontFamily: 'Almarai',
);

TextStyle itemlableStyle = TextStyle(
    fontFamily: 'Almarai',
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: AppColor.Black);

ThemeData themeArabic = ThemeData(
  // fontFamily: "Cairo",
  cardColor: AppColor.Black,

  textTheme: const TextTheme(
    titleLarge: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
        fontSize: 30,
        color: AppColor.Black),
    titleMedium: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 30,
      fontFamily: 'Almarai',
    ),
    titleSmall: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 30,
      color: AppColor.white,
      fontFamily: 'Almarai',
    ),
    displayLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 15,
        fontFamily: 'Almarai',
        color: AppColor.linkColor),
    headlineMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
    headlineLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
    headlineSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 15,
        fontFamily: 'Almarai',
        color: AppColor.headlineSmallColor),
    bodySmall: TextStyle(
        height: 1,
        color: AppColor.halfgray,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        fontSize: 15),
    labelLarge: TextStyle(
        fontFamily: 'Almarai',
        fontWeight: FontWeight.w800,
        fontSize: 17,
        color: AppColor.white),
    labelSmall: TextStyle(
      height: 2,
      fontFamily: 'Poppins',
      color: AppColor.labelSmallcolor,
      fontWeight: FontWeight.w500,
      fontSize: 15,
    ),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
);
