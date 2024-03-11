import 'package:flutter/material.dart';
import 'package:portfolio_abhay/styles/style.dart';
import 'package:portfolio_abhay/widgets/side_logo.dart';

class HeaderMobile extends StatelessWidget {
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      width: double.maxFinite,
      child: Row(children: [
        SiteLogo(
          onTap: onLogoTap,
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: IconButton(
            icon: Icon(Icons.menu),
            onPressed: onMenuTap,
          ),
        ),
        SizedBox(width: 15)
      ]),
      decoration: kHeaderDecoration,
    );
  }
}
