import 'package:flutter/material.dart';
import 'package:portfolio_abhay/constants/colors.dart';
import 'package:portfolio_abhay/constants/size.dart';
import 'package:portfolio_abhay/widgets/desktop_mobile.dart';
import 'package:portfolio_abhay/widgets/drawer_mobile.dart';
import 'package:portfolio_abhay/widgets/header_desktop.dart';
import 'package:portfolio_abhay/widgets/header_mobile.dart';
import 'package:portfolio_abhay/widgets/mainDesktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : const DrawerMobile(),
        backgroundColor: CustomColor.scaffoldBg,
        body: ListView(scrollDirection: Axis.vertical, children: [
          if (constraints.maxWidth >= kMinDesktopWidth)
            const HeaderDesktop()
          else
            HeaderMobile(onMenuTap: () {
              scaffoldKey.currentState?.isEndDrawerOpen == true
                  ? scaffoldKey.currentState!.closeEndDrawer()
                  : scaffoldKey.currentState!.openEndDrawer();
            }, onLogoTap: () {
              scaffoldKey.currentState?.isEndDrawerOpen == true
                  ? scaffoldKey.currentState!.closeEndDrawer()
                  : scaffoldKey.currentState!.openEndDrawer();
            }),
          constraints.maxWidth >= kMinDesktopWidth
              ? MainDesktop()
              : DesktopMobile(),

          Container(
            height: 500,
            width: double.maxFinite,
            decoration: const BoxDecoration(color: Colors.blueGrey),
          ),

          ///Skills
          Container(
            height: 500,
            width: double.maxFinite,
            decoration: const BoxDecoration(),
          ),

          ///Projects
          Container(
            height: 500,
            width: double.maxFinite,
            decoration: const BoxDecoration(color: Colors.blueGrey),
          ),

          ///Contacts
          Container(
            height: 500,
            width: double.maxFinite,
            decoration: const BoxDecoration(),
          ),
          Container(
            height: 500,
            width: double.maxFinite,
            decoration: const BoxDecoration(color: Colors.blueGrey),
          ),
        ]),
      );
    });
  }
}
