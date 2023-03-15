import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../Helper/Constance.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key, required this.onTap,
  });
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0.h,horizontal: 0.7.w,),
      decoration: const BoxDecoration(
        color: Constance.primaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: ElevatedButton(
        onPressed: ()=>onTap(),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
              side: BorderSide(
                width: 2.5.sp,
                color: Colors.white,
              ),
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 0.5.h,
            horizontal: 1.w,
          ),
          child: Text(
            "Log in",
            style: Theme.of(context).textTheme.headline4?.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}