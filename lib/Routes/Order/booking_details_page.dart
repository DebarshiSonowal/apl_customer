import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sizer/sizer.dart';

import '../../Helper/CommonMethods.dart';
import '../../Helper/Constance.dart';
import '../../Models/booking_model.dart';
import '../../Widgets/Common/custom_navigation_drawer.dart';
import '../../Widgets/Common/top_bar.dart';
import '../../Widgets/Indivisual/Authentication/BookingDetails/BookingDetailsCard.dart';

class BookingDetailsPage extends StatelessWidget {
  BookingDetailsPage({Key? key, required this.id}) : super(key: key);
  final String id;
  final Booking bookItem = Constance.bookingsList[0];
  final textEditingController = TextEditingController(text: "0456");

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
              name: "ORDER ID: ${bookItem.order_id}",
              onTap: () {},
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Stack(
                  children: [
                    SizedBox(
                      height: double.infinity,
                      width: double.infinity,
                      child: Column(
                        children: [
                          CachedNetworkImage(
                            height: 20.h,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            imageUrl:
                                "https://images.unsplash.com/photo-1592838064575-70ed626d3a0e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHRydWNrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                          ),
                          SizedBox(
                            height: 23.h,
                          ),
                          Card(
                            elevation: 4,
                            child: Container(
                              color: Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 4.w,
                                      vertical: 1.2.h,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Next:",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5
                                              ?.copyWith(
                                                color: Colors.black54,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        SizedBox(
                                          width: 1.w,
                                        ),
                                        Text(
                                          "Share this OTP to the Driver",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5
                                              ?.copyWith(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        const Spacer(),
                                        const Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.black54,
                                        )
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    thickness: 0.1.h,
                                    color: Colors.black26,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 4.w,
                                      vertical: 1.2.h,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "OTP To Deliver The Service",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5
                                              ?.copyWith(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        const Spacer(),
                                        Container(
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                            color: Colors.white,
                                          ),
                                          width: 38.w,
                                          height: 3.h,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 1.w),
                                          child: Center(
                                            child: PinCodeTextField(
                                              length: 4,
                                              obscureText: false,
                                              animationType: AnimationType.fade,
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline5
                                                  ?.copyWith(
                                                    color: Colors.white,
                                                  ),
                                              pinTheme: PinTheme(
                                                shape: PinCodeFieldShape.box,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                fieldHeight: 3.h,
                                                fieldWidth: 7.w,
                                                activeColor:  Colors.black,
                                                inactiveColor: Colors.black,
                                                disabledColor: Colors.black,
                                                selectedColor: Colors.black,
                                                activeFillColor: Colors.black,
                                                inactiveFillColor: Colors.black,
                                                selectedFillColor: Colors.black,
                                              ),
                                              animationDuration: const Duration(
                                                  milliseconds: 300),
                                              // backgroundColor: Constance.textFieldColor,
                                              enableActiveFill: true,
                                              // errorAnimationController: errorController,
                                              controller: textEditingController,
                                              onCompleted: (v) {},
                                              onChanged: (value) {
                                                // print(value);
                                                // setState(() {
                                                //   currentText = value;
                                                // });
                                              },
                                              beforeTextPaste: (text) {
                                                // print("Allowing to paste $text");
                                                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                                                return true;
                                              },
                                              appContext: context,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Align(
                      heightFactor: 2.3,
                      child: OfferDetailsCard(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
