import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../../Helper/Constance.dart';
import '../../../Common/common_button.dart';

class LoginSection extends StatelessWidget {
  const LoginSection({
    super.key,
    required this.textController, required this.onTap, required this.isItValid, required this.onEditingEnd,
  });
  final Function(String,bool) onTap,onEditingEnd;
  final TextEditingController textController;
  final bool isItValid;
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
                color: Constance.textFieldColor,
              ),
              width: 60.w,
              height: 6.h,
              padding: EdgeInsets.symmetric(
                  horizontal: 2.w, vertical: 1.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 6.h,
                    width: 8.w,
                    // alignment: Alignment.center,
                    // width: 45.w,
                    child: Center(
                      child: Text(
                        "+91",
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            ?.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Container(
                    // color: Colors.green,
                    height: 6.h,
                    alignment: Alignment.center,
                    width: 30.w,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Phone Number',
                        counterText: "",
                        hintStyle: Theme.of(context)
                            .textTheme
                            .headline5
                            ?.copyWith(
                          color: Colors.black54,

                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      cursorColor: Colors.black,
                      controller: textController,
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      onEditingComplete: (){
                        onEditingEnd(textController.text,checkValidInvalid());
                      },
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  isItValid?const Spacer():Container(),
                  isItValid?SizedBox(
                    height: 6.h,
                    width: 6.w,
                    child: Center(
                      child: SvgPicture.asset(
                        Constance.checkedIcon,
                      ),
                    ),
                  ):Container(),
                ],
              ),
            ),
            CommonButton(
              color: Constance.buttonColor,
              onTap: ()=>onTap(textController.text,checkValidInvalid()),
              text: 'Continue',
            ),
          ],
        ),
      ),
    );
  }

  bool checkValidInvalid() {
    if(textController.text.isEmpty){
      return false;
    }
    if(textController.text.length!=10){
      return false;
    }
    if(RegExp(r'^[a-z]+$').hasMatch(textController.text)){
      // print("It is ${!isNumeric(textController.text)}");
      return false;
    }
    return true;
  }
  bool isNumeric(String s) {
    if (s == null) {
      return false;
    }
    return double.tryParse(s) != null;
  }
}
