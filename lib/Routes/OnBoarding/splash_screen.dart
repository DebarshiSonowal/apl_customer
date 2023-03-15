import 'package:apl_customer/Helper/Constance.dart';
import 'package:apl_customer/Router/Navigate.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {



  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Constance.logo,
            height: 25.h,
            width: 70.w,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 1.h,
          ),
          Text(
            "SMART SALES & DISTRIBUTION",
            style: Theme.of(context).textTheme.headline3?.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
      // Navigation.instance.navigateAndRemoveUntil('/login');
      Navigation.instance.navigateAndRemoveUntil('/onboard');
      // Navigation.instance.navigateAndRemoveUntil('/main');
    });
  }
}
