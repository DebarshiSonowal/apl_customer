import 'package:apl_customer/Routes/Authentication/login_page.dart';
import 'package:apl_customer/Widgets/Common/loadingDialog.dart';
import 'package:flutter/material.dart';

import '../Routes/Authentication/otp_verify_page.dart';
import '../Routes/OnBoarding/onboard_page.dart';
import '../Routes/Dashboard/dashboard_page.dart';
import '../Routes/OnBoarding/splash_screen.dart';
import '../Routes/Order/booking_details_page.dart';
import '../Routes/Order/bookings_page.dart';
import '../Widgets/Common/FadeTransitionPageRouteBuilder.dart';
import 'Navigate.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  // if (settings.name == null || settings.name == "") {
  //   return FadeTransitionPageRouteBuilder(page: HomeScreen());
  // }
  switch (settings.name) {
    //SplashScreen and OnboardScreen
    case '/':
      return FadeTransitionPageRouteBuilder(page: const SplashScreen());
    case '/onboard':
      return FadeTransitionPageRouteBuilder(page: const OnBoardPage());

    //Loading
    case '/loading':
      return FadeTransitionPageRouteBuilder(page: LoadingDialog());

    //Authentication
    case '/login':
      return FadeTransitionPageRouteBuilder(page: const LogInPage());
    case '/verify':
      return FadeTransitionPageRouteBuilder(
          page: OtpVerifyPage(
        phoneNumber: settings.arguments as String,
      ));

    //bookings
    case "/bookings":
      return FadeTransitionPageRouteBuilder(page: const BookingsPage());
    case "/bookingsDetails":
      return FadeTransitionPageRouteBuilder(
          page: BookingDetailsPage(
        id: settings.arguments as String,
      ));

    //MainPage
    case '/main':
      return FadeTransitionPageRouteBuilder(page: const DashboardPage());
    default:
      return FadeTransitionPageRouteBuilder(page: Container());
  }
}
