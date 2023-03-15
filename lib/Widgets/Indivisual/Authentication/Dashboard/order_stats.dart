import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../../Helper/Constance.dart';

class OrdersStats extends StatelessWidget {
  const OrdersStats({
    super.key,
    required this.asset,
    required this.name,
    required this.number,
    required this.color,
  });

  final String asset, name;
  final int number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          asset,
          fit: BoxFit.fill,
          height: 5.h,
          width: 40.w,
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          children: [
            Text(
              "$number",
              style: Theme.of(context).textTheme.headline5?.copyWith(
                color: color,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 1.w,
            ),
            Text(
              name,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Constance.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}