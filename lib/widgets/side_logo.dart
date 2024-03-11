import 'package:flutter/material.dart';
import 'package:portfolio_abhay/constants/colors.dart';

class SiteLogo extends StatelessWidget {
 final VoidCallback? onTap;
  const SiteLogo({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onDoubleTap: () {},
      child: Text("AS",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              // decoration: TextDecoration.underline,
              color: CustomColor.yellowSecondary)),
    );
  }
}
