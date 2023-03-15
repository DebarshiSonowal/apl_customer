import 'package:apl_customer/Models/booking_model.dart';
import 'package:flutter/material.dart';

class Constance{
  static const primaryColor = Color(0xff153a9c);
  static const secondaryColor = Color(0xffc5783d);
  static const thirdColor = Color(0xff359e05);
  static const forthColor = Color(0xff647876 );
  static const fifthColor = Color(0xffcacfd8);
  static const sixthColor = Color(0xff143964);
  static const seventhColor = Color(0xff64ac92);
  static const eightColor = Color(0xff6482cc);
  static const buttonColor = Color(0xff5598c5);
  static const backgroundColor = Color(0xfff0f1f5);
  static const textFieldColor = Color(0xffecf0f3);
  static const iconColor = Color(0xff5a28c5);


  //Logos
  static const logo = "assets/images/logo.jpg";
  static const logo1 = "assets/images/logo1.png";
  static const mobileIcon = "assets/images/smartphone.png";

  //vector images
  static const checkedIcon = "assets/svg/checked.svg";
  static const otpIcon = "assets/svg/otp_verify.svg";
  static const truck1Icon = "assets/svg/truck1.svg";
  static const truck2Icon = "assets/svg/truck2.svg";
  static const ongoingIcon = "assets/svg/ongoing.svg";
  static const completedIcon = "assets/svg/completed.svg";
  static const historyIcon = "assets/svg/history.svg";


  static final bookingsList=[
    Booking(0,"APL/ 23/ 4065", "BOOKING ACCEPTED", "Tue, Feb 8 at 12:30", "METHANOL", "10000 LTR", "AS 05 J 6777", "Own", true),
    Booking(1,"APL/ 23/ 2065", "BOOKING ACCEPTED", "Tue, Feb 7 at 12:30", "METHANOL", "30000 LTR", "", "", false),
    Booking(2,"APL/ 23/ 0465", "BOOKING ACCEPTED", "Tue, Feb 7 at 12:30", "METHANOL", "10000 LTR", "AS 05 J 6777", "Own", true),
    Booking(3,"APL/ 23/ 0065", "BOOKING ACCEPTED", "Tue, Feb 7 at 12:30", "METHANOL", "50000 LTR", "", "", false),
  ];

}