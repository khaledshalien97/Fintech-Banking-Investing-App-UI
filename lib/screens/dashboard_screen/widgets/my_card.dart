import 'package:fintech_banking_investing_ui/screens/common_widgets/common_text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: 400,
            width: 230,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/images/frame.png"),
              ),
            ),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 25,
                            height: 55,
                            child: SvgPicture.asset(
                              "asset/svg_images/sim_cart.svg",
                            ),
                          ),
                          commonTextWidget(
                            text: "**** 6175",
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                      commonTextWidget(
                        text: "\$ 47,417",
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          width: 50,
                          height: 60,
                          child: SvgPicture.asset(
                            "asset/svg_images/logo_bank.svg",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            height: 400,
            width: 230,
            decoration: BoxDecoration(
              image: DecorationImage(
                opacity: 0.4,
                image: AssetImage("asset/images/frame.png"),
              ),
            ),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 25,
                            height: 55,
                            child: SvgPicture.asset(
                              "asset/svg_images/sim_cart.svg",
                            ),
                          ),
                          commonTextWidget(
                            text: "**** 6175",
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                      commonTextWidget(
                        text: "\$ 584,466",
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          width: 50,
                          height: 60,
                          child: SvgPicture.asset(
                            "asset/svg_images/visa_logo.svg",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
