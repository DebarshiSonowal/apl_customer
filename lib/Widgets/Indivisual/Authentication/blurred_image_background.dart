import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../Helper/Constance.dart';

class blurredBackground extends StatelessWidget {
  const blurredBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        // color: Colors.white,
        image: DecorationImage(
          image: ExactAssetImage(Constance.logo,),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(color: Colors.white.withOpacity(0.85)),
      ),
    );
  }
}