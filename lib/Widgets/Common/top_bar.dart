import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
    required this.name,
    required this.onTap,
  });

  final String name;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 1.w,
        vertical: 1.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: Theme.of(context).textTheme.headline5?.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: () => onTap(),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black26,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              padding: EdgeInsets.all(1.5.w),
              child: Center(
                child: Text(
                  "Help",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: const Color(0xff7055bb),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}