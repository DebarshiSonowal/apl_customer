
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sizer/sizer.dart';

import '../../../../Helper/Constance.dart';
import '../../../Common/common_button.dart';

class OtpVerifySection extends StatelessWidget {
  const OtpVerifySection({
    super.key,
    required this.textEditingController, required this.onTap,
  });

  final TextEditingController textEditingController;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        padding:
        EdgeInsets.symmetric(vertical: 3.h, horizontal: 2.w),
        height: 25.h,
        width: 90.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Colors.white,
              ),
              width: 60.w,
              height: 6.h,
              padding: EdgeInsets.symmetric(
                  horizontal: 2.w, vertical: 1.h),
              child: PinCodeTextField(
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                textStyle: Theme.of(context).textTheme.headline5?.copyWith(
                  color:Colors.black,
                ),
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 4.h,
                  fieldWidth: 9.w,

                  inactiveColor: Constance.textFieldColor,
                  disabledColor: Constance.textFieldColor,
                  selectedColor: Constance.textFieldColor,
                  activeFillColor: Constance.textFieldColor,
                  inactiveFillColor: Constance.textFieldColor,
                  selectedFillColor: Constance.textFieldColor,
                ),
                animationDuration: Duration(milliseconds: 300),
                // backgroundColor: Constance.textFieldColor,
                enableActiveFill: true,
                // errorAnimationController: errorController,
                controller: textEditingController,
                onCompleted: (v) {

                },
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
            CommonButton(
              color: Constance.buttonColor,
              onTap: ()=>onTap(),
              text: 'Continue',
            ),
          ],
        ),
      ),
    );
  }
}