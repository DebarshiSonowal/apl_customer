// import 'package:dotted_border/dotted_border.dart';
import 'package:apl_customer/Models/booking_model.dart';
import 'package:apl_customer/Router/Navigate.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../Helper/CommonMethods.dart';
import '../../Helper/Constance.dart';
import '../../Widgets/Common/custom_navigation_drawer.dart';
import '../../Widgets/Common/top_bar.dart';
import '../../Widgets/Indivisual/Authentication/Booking/BookingCardItem.dart';

class BookingsPage extends StatelessWidget {
  const BookingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonMethods.CustomAppBar(context),
      drawer: const CustomNavigationDrawer(),
      body: Container(
        color: Constance.backgroundColor,
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 1.w,
          vertical: 1.h,
        ),
        child: Column(
          children: [
            TopBar(
              name: "Bookings",
              onTap: () {},
            ),
            Divider(
              thickness: 0.1.h,
              color: Colors.black26,
            ),
            SizedBox(
              height: 2.h,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  var item = Constance.bookingsList[index];
                  return BookingCardItem(item: item);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    thickness: 0.1.h,
                    color: Colors.black26,
                  );
                },
                itemCount: Constance.bookingsList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


