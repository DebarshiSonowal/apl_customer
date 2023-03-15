import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../Helper/Constance.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
    required this.onTap,
    required this.text, this.color,
  });

  final Function onTap;
  final String text;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:()=>onTap(),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color ?? Constance.primaryColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(
              width: 0.sp,
              color: Colors.white,
            ),
          ),
        ),
      ),
      child: Container(
        width: 31.w,
        padding: EdgeInsets.symmetric(
          vertical: 0.5.h,
          horizontal: 0.5.w,
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.headline4?.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}