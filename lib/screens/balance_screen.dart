import 'package:fintech_banking_investing_ui/screens/common_widgets/app_bar_widget.dart';
import 'package:fintech_banking_investing_ui/screens/common_widgets/common_text_widgets.dart';
import 'package:fintech_banking_investing_ui/screens/common_widgets/weekly_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BalanceScreen extends StatelessWidget {
  const BalanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appbarWidget(color: Colors.white),
      body: Stack(
        children: [
          Positioned(
            top: -450,
            left: -130,
            child: Container(
              height: 700,
              width: 700,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("asset/images/background_balance.png"),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 120,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xff00DDA3),
                shape: BoxShape.circle,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  commonTextWidget(
                    text: "Total",
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  commonTextWidget(
                    text: "Balance",
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  commonTextWidget(
                    text: "\$ 214,417",
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            top: 390,
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 160),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Assets
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xff33404F),
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child: Text(
                          "Assets",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      // Dept
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          border: Border.all(color: Color(0xff00DDA3)),
                        ),
                        child: Text(
                          "Dept",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Color(0xff00DDA3),
                          ),
                        ),
                      ),
                      // Income
                      Container(
                        padding: const EdgeInsets.symmetric(
                       horizontal: 30,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          border: Border.all(color: Color(0xffB5C5C3)),
                        ),
                        child: Text(
                          "Income",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Color(0xffB5C5C3),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 22),
                  SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: WeeklyChart(),
                  ),
                ],
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 140,
              color: Color(0xffE1FFEF),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff00DDA3),
                        //  border: Border.all(color: Colors.red, width: 2),
                      ),
                      child: Icon(
                        Icons.close_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 70,
                        child: SvgPicture.asset(
                          "asset/svg_images/spending.svg",
                        ),
                      ),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            commonTextWidget(
                              text: "Spending",
                              fontSize: 28,
                              color: Color(0xff33404F),
                              fontWeight: FontWeight.bold,
                            ),

                            commonTextWidget(
                              text:
                                  "You forgot to add debt card number at payment #1323. Add it now",
                              fontSize: 14,
                              color: Color(0xff33404F),
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
