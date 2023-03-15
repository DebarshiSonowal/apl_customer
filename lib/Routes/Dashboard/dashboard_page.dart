import 'package:apl_customer/Helper/CommonMethods.dart';
import 'package:apl_customer/Router/Navigate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:material_dialogs/dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:sizer/sizer.dart';

import '../../Helper/Constance.dart';

import '../../Widgets/Common/custom_navigation_drawer.dart';
import '../../Widgets/Indivisual/Authentication/Dashboard/dashboard_card.dart';
import '../../Widgets/Indivisual/Authentication/Dashboard/order_placed_section.dart';
import '../../Widgets/Indivisual/Authentication/Dashboard/order_stats.dart';
import '../../Widgets/Indivisual/Authentication/Dashboard/order_stats_section.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool methanol = true, aplVehicle = true;
  String val = "10000 LTR";
  String ownVehicle = "AS04H0724";

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
          horizontal: 4.w,
          vertical: 1.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Fleet",
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Constance.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(
              width: double.infinity,
              // height: 10.h,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  DashboardCard(
                    asset: Constance.truck1Icon,
                    name: "Total Vehicles",
                    number: 1,
                  ),
                  DashboardCard(
                    asset: Constance.truck2Icon,
                    name: "Active Vehicles",
                    number: 0,
                  ),
                ],
              ),
            ),
            const OrderStatsSection(),
            SizedBox(
              height: 1.h,
            ),
            OrderPlacedSection(
              methanol: methanol,
              aplVehicle: aplVehicle,
              val: val ?? "",
              updateAmount: (txt) {
                setState(() {
                  val = txt;
                });
              },
              ownVehicle: ownVehicle,
              updateVehicle: (value) {
                setState(() {
                  aplVehicle = value;
                });
              },
              updateSubstance: (value) {
                setState(() {
                  methanol = value;
                });
              },
              showDropBox: () {
                showDropBox();
              },
              orderPlaced: () {
                showSuccess();
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> showDropBox() async {
    final controller = TextEditingController();
    var selectedVehicle = "";
    var list = ["AS02AB3331", "AS04H0724", "AS04Q1234"];
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            width: 90.w,
            height: 30.h,
            child: Column(
              children: [
                Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  elevation: 5,
                  child: Container(
                    color: Colors.white,
                    width: 100.w,
                    height: 4.5.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "SELECT YOUR VEHICLE",
                          style:
                              Theme.of(context).textTheme.headline4?.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigation.instance.goBack();
                          },
                          child: const Icon(
                            Icons.close,
                            color: Colors.black26,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 100.w,
                  height: 20.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 1.w,
                    // vertical: 1.h,
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black38,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        height: 4.h,
                        width: 90.w,
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        child: Center(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  ?.copyWith(
                                    color: Colors.black,
                                  ),
                              hintText: "Search",
                            ),
                            controller: controller,
                          ),
                        ),
                      ),
                      StatefulBuilder(builder: (context, update) {
                        return SizedBox(
                          height: 16.h,
                          width: 90.w,
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: list.length,
                              itemBuilder: (context, index) {
                                var item = list[index];
                                return Theme(
                                  data: ThemeData(
                                    unselectedWidgetColor: Colors.grey,
                                  ),
                                  child: RadioListTile(
                                    activeColor: Colors.green,
                                    value: item,
                                    title: Text(
                                      item,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5
                                          ?.copyWith(
                                            color: Constance.primaryColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    groupValue: selectedVehicle,
                                    onChanged: (String? value) {
                                      update(() {
                                        selectedVehicle = value!;
                                      });
                                    },
                                  ),
                                );
                              }),
                        );
                      }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  showSuccess() {
    Dialogs.materialDialog(
        color: Colors.white,
        msg: 'Your order has been placed successfully',
        title: 'Order Placed!',
        titleStyle: Theme.of(context).textTheme.headline4!.copyWith(
              color: Colors.black,
            ),
        msgStyle: Theme.of(context).textTheme.headline6!.copyWith(
              color: Colors.black,
            ),
        lottieBuilder: Lottie.network(
          'https://assets8.lottiefiles.com/packages/lf20_s2lryxtd.json',
          fit: BoxFit.contain,
        ),
        context: context,
        actions: [
          IconsButton(
            onPressed: () {
              Navigation.instance.goBack();
            },
            text: 'ORDER ID: APL/ 23/4056',
            iconData: Icons.done,
            color: Colors.green,
            textStyle: const TextStyle(color: Colors.white),
            iconColor: Colors.white,
          ),
        ]);
  }
}
