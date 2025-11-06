import 'package:fintech_banking_investing_ui/screens/common_widgets/common_text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContainerTips extends StatelessWidget {
  const ContainerTips({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 30),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 25,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28),
        child: Row(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: -100,
                    left: -210,
                    child: Container(
                      width: 400,
                      height: 400,
                      decoration: BoxDecoration(
                        color: Color(0xffE1FFEF),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 20,
                    child: SvgPicture.asset(
                      "asset/svg_images/tips.svg",
                      height: 100,
                      width: 100,
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 28,
                        height: 28,
                        decoration: const BoxDecoration(
                          color: Color(0xFF52D39E),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    commonTextWidget(
                      text: "What is an ETF? ",
                      fontSize: 22,
                      color: Color(0xff33404F),
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(height: 10),
                    commonTextWidget(
                      text: "By James B, PHD",
                      fontSize: 16,
                      color: Color(0xff33404F),
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(height: 15),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF52D39E),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: commonTextWidget(
                        text: "LEARN MORE",
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
