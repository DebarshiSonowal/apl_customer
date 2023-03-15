import 'package:apl_customer/Router/Navigate.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class CustomNavigationDrawer extends StatelessWidget {
  const CustomNavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 2.w, right: 2.w),
          child: ListView(
            children: [
              ListTile(
                onTap: () {
                  Navigation.instance.navigate('/main');
                },
                title: Text(
                  "Dashboard",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: Colors.black,
                      ),
                ),
                leading: const Icon(
                  Icons.dashboard,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigation.instance.navigate('/bookings');
                },
                title: Text(
                  "Bookings",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: Colors.black,
                      ),
                ),
                leading: const Icon(
                  Icons.local_shipping,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
