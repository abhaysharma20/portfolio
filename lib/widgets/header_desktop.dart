import 'package:flutter/material.dart';
import 'package:portfolio_abhay/constants/colors.dart';
import 'package:portfolio_abhay/constants/nav_items.dart';
import 'package:portfolio_abhay/styles/style.dart';
import 'package:portfolio_abhay/widgets/side_logo.dart';

class HeaderDesktop extends StatefulWidget {
  const HeaderDesktop({super.key});

  @override
  State<HeaderDesktop> createState() => _HeaderDesktopState();
}

class _HeaderDesktopState extends State<HeaderDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(children: [
        SiteLogo(onTap: () {}),
        Spacer(),
        for (int i = 0; i < navBarTitles.length; i++)
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  navBarTitles[i],
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.whitePrimary),
                )),
          )
      ]),
      width: double.maxFinite,
      decoration: kHeaderDecoration,
    );
  }
}
