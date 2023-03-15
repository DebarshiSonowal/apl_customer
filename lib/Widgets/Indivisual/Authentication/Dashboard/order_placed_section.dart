import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import '../../../../Helper/Constance.dart';

class OrderPlacedSection extends StatelessWidget {
  const OrderPlacedSection(
      {Key? key,
      required this.methanol,
      required this.aplVehicle,
      required this.val,
      required this.updateAmount,
      required this.ownVehicle,
      required this.updateVehicle,
      required this.updateSubstance, required this.showDropBox, required this.orderPlaced})
      : super(key: key);
  final bool methanol, aplVehicle;
  final String val, ownVehicle;
  final Function(String) updateAmount;
  final Function showDropBox,orderPlaced;
  final Function(bool) updateVehicle, updateSubstance;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 3.w,
          vertical: 1.5.h,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "PLACE AN ORDER",
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: Constance.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(
              height: 1.h,
            ),
            SizedBox(
              width: double.infinity,
              // height: 15.h,
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: methanol
                                ? Constance.primaryColor
                                : Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        backgroundColor:
                            methanol ? Colors.white : Colors.white70,
                        foregroundColor:
                            methanol ? Colors.white : Colors.white70,
                      ),
                      onPressed: () {
                        updateSubstance(true);
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 2.w,
                          vertical: 1.5.h,
                        ),
                        child: Text(
                          "METHANOL",
                          style:
                              Theme.of(context).textTheme.headline5?.copyWith(
                                    color: methanol
                                        ? Constance.primaryColor
                                        : Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: !methanol
                                ? Constance.primaryColor
                                : Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        backgroundColor:
                            !methanol ? Colors.white : Colors.white70,
                        foregroundColor:
                            !methanol ? Colors.white : Colors.white70,
                      ),
                      onPressed: () {
                        updateSubstance(false);
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 2.w,
                          vertical: 1.5.h,
                        ),
                        child: Text(
                          "FORMALIN",
                          style:
                              Theme.of(context).textTheme.headline5?.copyWith(
                                    color: !methanol
                                        ? Constance.primaryColor
                                        : Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Container(
              width: double.infinity,
              height: 5.h,
              padding: EdgeInsets.symmetric(vertical: 0.2.w, horizontal: 3.w),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
              ),
              child: Row(
                children: [
                  Container(
                    height: 2.w,
                    width: 2.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  SizedBox(
                    width: 70.w,
                    child: Text(
                      "Bishnu Nagar, Joysagar, Sivasagar, Assam PO: Sivasagar, Pin Code: 785665",
                      maxLines: 2,
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: Colors.green,
                            fontSize: 8.sp,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              width: double.infinity,
              height: 5.h,
              padding: EdgeInsets.symmetric(vertical: 0.2.w, horizontal: 3.w),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
              ),
              child: Row(
                children: [
                  Container(
                    height: 2.w,
                    width: 2.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  SizedBox(
                    width: 70.w,
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: val,
                      items: <String>[
                        '10000 LTR',
                        '20000 LTR',
                        '30000 LTR',
                        '40000 LTR'
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style:
                                Theme.of(context).textTheme.headline5?.copyWith(
                                      color: Constance.primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        );
                      }).toList(),
                      onChanged: (_) {
                        updateAmount(_!);
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              width: double.infinity,
              height: 5.h,
              padding: EdgeInsets.symmetric(vertical: 0.2.w, horizontal: 3.w),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.calendar_month,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  SizedBox(
                    width: 65.w,
                    child: Text(
                      DateFormat("EEE, dd MMM h:mma").format(DateTime.now()),
                      maxLines: 1,
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: Colors.grey,
                            fontSize: 10.5.sp,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 1.h,
            // ),
            Theme(
              data: ThemeData(
                unselectedWidgetColor: Colors.grey,
              ),
              child: RadioListTile(
                activeColor: Colors.green,
                title: Text(
                  "Vehicle Provided by APL",
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: aplVehicle ? Colors.green : Colors.black38,
                        fontSize: 10.sp,
                      ),
                ),
                value: true,
                groupValue: aplVehicle,
                onChanged: (value) {
                  updateVehicle(!aplVehicle);
                },
              ),
            ),
            Theme(
              data: ThemeData(
                unselectedWidgetColor: Colors.grey,
              ),
              child: RadioListTile(
                activeColor: Colors.green,
                title: aplVehicle
                    ? Text(
                        "My Vehicle",
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              color:
                                  !aplVehicle ? Colors.green : Colors.black38,
                              fontSize: 10.sp,
                            ),
                      )
                    : Row(
                        children: [
                          Text(
                            "My Vehicle : $ownVehicle",
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      color: !aplVehicle
                                          ? Colors.green
                                          : Colors.black38,
                                      fontSize: 10.sp,
                                    ),
                          ),
                          IconButton(
                            onPressed: () {
                              showDropBox();
                            },
                            icon: const Icon(
                              Icons.edit_note,
                              color: Colors.green,
                            ),
                          )
                        ],
                      ),
                value: false,
                groupValue: aplVehicle,
                onChanged: (value) {
                  updateVehicle(!aplVehicle);
                },
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            SizedBox(
              width: double.infinity,
              height: 5.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: ()=>orderPlaced(),
                child: Text(
                  "ORDER PLACED",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
