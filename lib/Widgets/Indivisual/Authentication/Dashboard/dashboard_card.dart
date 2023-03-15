import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../../Helper/Constance.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    super.key,
    required this.asset,
    required this.name,
    required this.number,
  });

  final String asset, name;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.white,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        padding: EdgeInsets.symmetric(
          vertical: 0.5.h,
          horizontal: 2.5.w,
        ),
        height: 6.h,
        width: 40.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              asset,
              fit: BoxFit.fill,
              height: 5.h,
              width: 40.w,
            ),
            SizedBox(
              width: 5.w,
              child: Center(
                child: Text(
                  "$number",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Constance.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 16.w,
              child: Text(
                name,
                style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: Constance.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}