// ignore_for_file: prefer_const_constructors

import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/core/constant/imageasset.dart';
import 'package:bigcart/core/static/cardItemList.dart';
import 'package:bigcart/core/static/onboardingList.dart';
import 'package:bigcart/view/widget/home/txtfieldWidget.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/appthem.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: AppColor.iconColor,
          size: 30,
        ),
        actions: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: 50,
              height: 50,
              child: Image.asset(AppImageAsset.profile))
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {},
                child: const Icon(
                  color: AppColor.iconColor,
                  Icons.filter_list,
                ),
              ),
              Container(
                width: width / 1.2,
                child: TxtField(
                  hintText: 'ابحث هنا',
                ),
              ),
            ],
          ),
          Container(
            height: height / 4.5,
            margin: EdgeInsets.symmetric(vertical: width / 10),
            decoration: BoxDecoration(
                color: AppColor.adsColor,
                borderRadius: BorderRadius.circular(19)),
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset(AppImageAsset.adsImage),
                  width: width / 1.2,
                  right: -140,
                  bottom: -20,
                ),
                Positioned(
                    top: 30,
                    left: width / 10,
                    child: Text('منتجات طازجة',
                        style: Theme.of(context).textTheme.titleSmall)),
                Positioned(
                    top: height / 12,
                    left: width / 20,
                    child:
                        Text('تطلع من المزرعة وتجي لبابك', style: adscontent)),
                Positioned(
                    bottom: height / 22,
                    left: width / 20,
                    child: MaterialButton(
                      onPressed: () {},
                      color: AppColor.adsButtonColor,
                      shape: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        'اطلب الان',
                        style: adsButtoncontent,
                      ),
                    ))
              ],
            ),
          ),
          Container(
            height: height / 2,
            // color: AppColor.adsColor,
            child: GridView.builder(
              itemCount: onCraditemList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 25, mainAxisSpacing: 40),
              itemBuilder: (context, index) {
                return Container(
                  height: height / 2,
                  width: width / 2,
                  decoration: BoxDecoration(
                      color: AppColor.whitgray,
                      borderRadius: BorderRadius.circular(19)),
                  child: Stack(
                    children: [
                      Positioned(
                        // width: width / 1.5,
                        height: height / 7,
                        bottom: 1,
                        left: 1,
                        child: Image.asset(
                          onCraditemList[index].image!,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                          top: -2,
                          left: -2,
                          child: Container(
                            height: 51,
                            width: 136,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30),
                                    topLeft: Radius.circular(20)),
                                color: AppColor.itemColorlable),
                            child: Center(
                              child: Text(onCraditemList[index].title!,
                                  style: itemlableStyle),
                            ),
                          )),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
