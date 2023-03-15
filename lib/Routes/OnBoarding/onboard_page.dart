import 'dart:ui';

import 'package:apl_customer/Helper/Constance.dart';
import 'package:apl_customer/Router/Navigate.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Widgets/Common/common_button.dart';
import '../../Widgets/Common/login_button.dart';
import '../../Widgets/Indivisual/Authentication/blurred_image_background.dart';

class OnBoardPage extends StatefulWidget {
  const OnBoardPage({Key? key}) : super(key: key);

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: Stack(
        children: [
          const blurredBackground(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  Constance.logo,
                  height: 10.h,
                  width: 30.w,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 2.h,
                ),
                // SizedBox(
                //   height: 2.5.h,
                // ),
                LoginButton(
                  onTap: () {
                    Navigation.instance.navigateAndRemoveUntil('/login');
                    // Navigation.instance.navigate("/main");
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonButton(
                      onTap: () {},
                      text: 'CUSTOMER',
                    ),
                    CommonButton(
                      onTap: () {},
                      text: 'DRIVER',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonButton(
                      onTap: () {},
                      text: 'APL ADMIN',
                    ),
                    CommonButton(
                      onTap: () {},
                      text: 'TRANSPORTER',
                    ),
                  ],
                ),
                CommonButton(
                  onTap: () {},
                  text: 'SECURITY',
                ),
                SizedBox(
                  height: 2.h,
                ),
                GestureDetector(
                  onTap: () {
                    _launchUrl("");
                  },
                  child: Text(
                    "Terms & Conditions Apply",
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: Colors.blueAccent,
                        ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
