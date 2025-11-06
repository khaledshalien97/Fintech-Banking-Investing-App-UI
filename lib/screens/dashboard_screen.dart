import 'package:fintech_banking_investing_ui/screens/common_widgets/app_bar_widget.dart';
import 'package:fintech_banking_investing_ui/screens/common_widgets/common_text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(color: Colors.black),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.fromLTRB(15, 40, 10, 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              commonTextWidget(
                text: "Investing Tips",
                fontSize: 22,
                color: Color(0xff33404F),
                fontWeight: FontWeight.w700,
              ),
               SizedBox(height: 10,),
              Container(
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
                            // mainAxisAlignment: MainAxisAlignment.center,
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
              ),

              commonTextWidget(
                text: "my cards (4)",
                fontSize: 22,
                color: Color(0xff33404F),
                fontWeight: FontWeight.w700,
              ),
              SizedBox(height: 10,),
              SizedBox(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
