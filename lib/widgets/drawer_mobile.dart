import 'package:flutter/material.dart';
import 'package:portfolio_abhay/constants/colors.dart';
import 'package:portfolio_abhay/constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.scaffoldBg,
      child: ListView(children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20, bottom: 20),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.close),
            ),
          ),
        ),
        for (int i = 0; i < navBarIcons.length; i++)
          ListTile(
            onTap: () {},
            contentPadding: const EdgeInsets.symmetric(horizontal: 30),
            leading: Icon(navBarIcons[i]),
            title: Text(
              navBarTitles[i],
              style: const TextStyle(
                  color: CustomColor.whitePrimary,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
          ),
      ]),
    );
  }
}
