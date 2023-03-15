import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../Helper/Constance.dart';
import 'order_stats.dart';

class OrderStatsSection extends StatelessWidget {
  const OrderStatsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 1.5.h,
            horizontal: 3.w,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          width: double.infinity,
          height: 17.h,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "ORDERS",
                    style:
                    Theme.of(context).textTheme.headline5?.copyWith(
                      color: Constance.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "1",
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            ?.copyWith(
                          color: Constance.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        "Vehicles",
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            ?.copyWith(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                color: Colors.black38,
                thickness: 0.3.sp,
              ),
              Row(
                children: [
                  const OrdersStats(
                    asset: Constance.ongoingIcon,
                    name: "ONGOING",
                    number: 1,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const OrdersStats(
                    asset: Constance.completedIcon,
                    name: "COMPLETED",
                    number: 0,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const OrdersStats(
                    asset: Constance.historyIcon,
                    name: "HISTORY",
                    number: 1,
                    color: Colors.grey,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}