
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../Helper/Constance.dart';
import '../../../../Models/booking_model.dart';

class BookingCardInfoSection extends StatelessWidget {
  const BookingCardInfoSection({
    super.key,
    required this.item,
  });

  final Booking item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black38,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 3.w,
        vertical: 1.5.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.book,
                color: Colors.green,
                size: 8.sp,
              ),
              SizedBox(
                width: 1.w,
              ),
              Text(
                item.status,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(
                  fontSize: 8.sp,
                  color: Colors.green,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 0.5.h,
          ),
          Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${item.consignment} | ${item.quantity}",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(
                  fontSize: 11.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 12.sp,
              ),
            ],
          ),
          SizedBox(
            height: 0.5.h,
          ),
          Text(
            item.date,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(
              fontSize: 9.sp,
              color: Colors.black26,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          DottedLine(
            lineLength: double.infinity,
            lineThickness: 0.1.h,
            dashColor: Colors.black26,
          ),
          SizedBox(
            height: 1.h,
          ),
          item.vehicle_status
              ? Column(
            children: [
              Text(
                "Vehicle Assigned: ${item.vehicle_assigned}",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(
                  fontSize: 11.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "REG NO:${item.reg_no}",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(
                  fontSize: 11.sp,
                  color: Constance.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
              : Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "APL Finding A Tanker To Assign",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(
                  fontSize: 11.sp,
                  color: Constance.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Icon(
                Icons.document_scanner,
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}