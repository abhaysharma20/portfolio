import 'package:flutter/material.dart';
import 'package:portfolio_abhay/constants/colors.dart';

class DesktopMobile extends StatelessWidget {
  const DesktopMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      height: screenHeight,
      constraints: BoxConstraints(
        minHeight: 560,
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: ShaderMask(
                shaderCallback: (bounds) {
                  return LinearGradient(colors: [
                    CustomColor.scaffoldBg.withOpacity(0.9),
                    CustomColor.scaffoldBg.withOpacity(0.4),
                    CustomColor.scaffoldBg.withOpacity(0.9),
                  ]).createShader(bounds);
                },
                blendMode: BlendMode.srcATop,
                child: Image.asset(
                  "assets/images/flutter_image.png",
                  width: screenWidth / 1.25,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Hi,\nI'm Abhay Sharma\nA Flutter Developer",
              style: TextStyle(
                  height: 1.5,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 190,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColor.yellowPrimary,
                    ),
                    onPressed: () {},
                    child: const Text("Get in Touch")),
              ),
            )
          ]),
    );
  }
}
