import 'package:apl_customer/Helper/CommonMethods.dart';
import 'package:apl_customer/Router/Navigate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../Helper/Constance.dart';
import '../../Widgets/Common/common_button.dart';
import '../../Widgets/Indivisual/Authentication/blurred_image_background.dart';
import '../../Widgets/Indivisual/Authentication/login_page/login_section.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final textController = TextEditingController();
  bool isItValid = false;

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
                Image.asset(
                  Constance.mobileIcon,
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
                      "Login With Your Mobile Number",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      "Registered with APL",
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
                      "Enter your mobile number we will sent",
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      "your otp to verify",
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
                LoginSection(
                  textController: textController,
                  onTap: (txt, isValid) {
                    FocusManager.instance.primaryFocus?.unfocus();
                    if (!isValid) {

                      CommonMethods.showError("Please Check the number");
                    } else {

                      login(txt);
                    }
                  },
                  isItValid: isItValid,
                  onEditingEnd: (txt, isValid) {
                    setState(() {
                      isItValid = isValid;
                    });
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

  void login(String txt) {
    Navigation.instance.navigate('/loading');
    Future.delayed(const Duration(seconds: 4), () {
      Navigation.instance.navigateAndReplace("/verify",args: textController.text);
      // Navigation.instance.navigateAndReplace("/main");
    });
  }
}
