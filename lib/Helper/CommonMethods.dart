import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Router/Navigate.dart';
import '../Widgets/Common/alert_dialog.dart';
import 'Constance.dart';

class CommonMethods {
  static void showError(String msg) {
    AlertX.instance.showAlert(
        title: "Error",
        msg: msg,
        positiveButtonText: "Done",
        positiveButtonPressed: () {
          Navigation.instance.goBack();
        });
  }
  static AppBar CustomAppBar(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      backgroundColor: const Color(0xfff0f1f5),
      title: Image.asset(
        Constance.logo1,
        height: 6.h,
        width: 20.w,
        fit: BoxFit.fill,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Badge(
            backgroundColor: Colors.red,
            label: Text(
              "5",
              style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Colors.white,
              ),
            ),
            child: Icon(
              Icons.notifications,
              color: Constance.secondaryColor,
              size: 22.sp,
            ),
          ),
        ),
      ],
    );
  }
}
