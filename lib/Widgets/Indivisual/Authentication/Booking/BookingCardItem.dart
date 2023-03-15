import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../Helper/Constance.dart';
import '../../../../Models/booking_model.dart';
import '../../../../Router/Navigate.dart';
import 'BookingCardInfoSection.dart';

class BookingCardItem extends StatelessWidget {
  const BookingCardItem({
    super.key,
    required this.item,
  });

  final Booking item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.w,
        vertical: 1.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "ORDER ID: ${item.order_id}",
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(
            height: 1.h,
          ),
          GestureDetector(
            onTap: () {
              Navigation.instance.navigate(
                "/bookingsDetails",
                args: item.id.toString(),
              );
            },
            child: BookingCardInfoSection(item: item),
          ),
        ],
      ),
    );
  }
}
