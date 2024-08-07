// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomepageController extends GetxController {
  search();
  goToProfile();
  goBackPage();
  goToDrawar();
  filterData();
  clickMoreItem();
}

class HomepageControllerImp extends HomepageController {
  @override
  clickMoreItem() {
    // TODO: implement clickMoreItem
    throw UnimplementedError();
  }

  @override
  filterData() {
    // TODO: implement filterData
    throw UnimplementedError();
  }

  @override
  goBackPage() {
    // TODO: implement goBackPage
    throw UnimplementedError();
  }

  @override
  goToDrawar() {
    // TODO: implement goToDrawar
    throw UnimplementedError();
  }

  @override
  goToProfile() {
    // TODO: implement goToProfile
    throw UnimplementedError();
  }

  @override
  search() {
    // TODO: implement search
    throw UnimplementedError();
  }
}
