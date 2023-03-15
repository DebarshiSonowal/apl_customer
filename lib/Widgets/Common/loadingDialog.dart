import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

import '../../Helper/Constance.dart';

class LoadingDialog extends StatelessWidget {
  LoadingDialog({super.key}) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.black54,
        body: Column(
          children: [
            Expanded(
              child: Container(),
            ),
            Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  // color: Colors.white,
                  // shape: BoxShape.circle,
                ),
                // child: const SizedBox(
                //   height: 24,
                //   width: 24,
                //   child: CircularProgressIndicator(
                //     strokeWidth: 3,
                //     color: Constance.primaryColor,
                //   ),
                // ),
                child: Shimmer.fromColors(
                  baseColor: Colors.white,
                  highlightColor: Constance.secondaryColor,
                  child: Image.asset(
                    Constance.logo1,
                    height: 10.h,
                    // color: Colors.black,
                    width: 32.w,
                    fit: BoxFit.fill,
                  ),
                )),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
