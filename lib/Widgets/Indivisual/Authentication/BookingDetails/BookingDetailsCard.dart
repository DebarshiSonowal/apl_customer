import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import '../../../../Helper/Constance.dart';

class OfferDetailsCard extends StatelessWidget {
  const OfferDetailsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(horizontal: 2.w),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        padding: EdgeInsets.symmetric(
          // horizontal: 4.w,
          vertical: 1.h,
        ),
        height: 25.h,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
                // vertical: 1.5.h,
              ),
              width: double.infinity,
              height: 4.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "HDT 3693R",
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 1.w, vertical: 0.5.h),
                      child: Text(
                        "AS 04R 0987",
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "ID: APL/ 23/ 4056",
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 0.1.h,
              color: Colors.black26,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 4.w,
                ),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "PICK UP TIME",
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Text(
                          "ESTIMATED TIME OF ARRIVAL",
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          DateFormat("dd MMM, HH:MM a").format(DateTime.now()),
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    color: Colors.black,
                                  ),
                        ),
                        Text(
                          DateFormat("dd MMM, HH:MM a").format(DateTime.now()),
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    color: Colors.black,
                                    // fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                      width: 80.w,
                      // color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 10.w,
                            child: const Icon(
                              Icons.location_on,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(
                            width: 70.w,
                            child: Text(
                              "The Dragon Wok, 8JH6+PWM, Mahatma Gandhi Marg, Arithang, Gangtok, Sikkim",
                              // maxLines: 2,
                              overflow: TextOverflow.clip,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  ?.copyWith(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 0.1.h,
              color: Colors.black26,
            ),
            Container(
              height: 5.h,
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CachedNetworkImage(
                    height: 5.h,
                    width: 9.5.w,
                    fit: BoxFit.fill,
                    imageUrl:
                        "https://images.unsplash.com/photo-1590086782957-93c06ef21604?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fG1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
                  ),
                  SizedBox(
                    height: 5.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ID: APL/ 23/ 4056",
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Text(
                          "ID: APL/ 23/ 4056",
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    fontSize: 9.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  ClipOval(
                    child: Material(
                      color: Colors.white, // Button color
                      child: InkWell(
                        splashColor: Constance.iconColor,
                        onTap: () {},
                        child: SizedBox(
                          width: 5.h,
                          height: 5.h,
                          child: const Icon(
                            Icons.phone,
                            color: Constance.iconColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ClipOval(
                    child: Material(
                      color: Colors.white, // Button color
                      child: InkWell(
                        splashColor: Constance.iconColor,
                        onTap: () {},
                        child: SizedBox(
                          width: 5.h,
                          height: 5.h,
                          child: const Icon(
                            Icons.message,
                            color: Constance.iconColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    type: MaterialType.transparency,
                    //Makes it usable on any background color, thanks @IanSmith
                    child: Ink(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 0.1.h,
                        ),
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                        // color: Colors.indigo[900],
                        // shape: BoxShape.rectangle,
                      ),
                      child: InkWell(
                        //This keeps the splash effect within the circle
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        //Something large to ensure a circle
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 2.w,
                            vertical: 1.h,
                          ),
                          child: Text(
                            "TRACK",
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      color: Constance.iconColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
