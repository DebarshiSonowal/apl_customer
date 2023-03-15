import 'package:apl_customer/Router/Navigate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../Helper/Constance.dart';
import '../../Widgets/Common/common_button.dart';
import '../../Widgets/Indivisual/Authentication/blurred_image_background.dart';
import '../../Widgets/Indivisual/Authentication/login_page/otp_verify_section.dart';

class OtpVerifyPage extends StatefulWidget {
  const OtpVerifyPage({Key? key, required this.phoneNumber}) : super(key: key);
  final String phoneNumber;

  @override
  State<OtpVerifyPage> createState() => _OtpVerifyPageState();
}

class _OtpVerifyPageState extends State<OtpVerifyPage> {
  final textEditingController = TextEditingController();

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
                  width: 32.w,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 1.h,
                ),
                SvgPicture.asset(
                  Constance.otpIcon,
                  height: 12.h,
                  width: 30.w,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 1.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Verification",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Enter the OTP sent to your number",
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      "+91 ${widget.phoneNumber}",
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                OtpVerifySection(
                  textEditingController: textEditingController,
                  onTap: () {
                    Navigation.instance.navigateAndRemoveUntil("/main");
                  },
                ),
                SizedBox(
                  height: 15.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
