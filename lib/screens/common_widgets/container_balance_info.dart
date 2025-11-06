import 'package:fintech_banking_investing_ui/screens/common_widgets/balance_tile.dart';
import 'package:fintech_banking_investing_ui/screens/common_widgets/common_text_widgets.dart';
import 'package:flutter/material.dart';

class ContainerBalanceInfo extends StatelessWidget {
  const ContainerBalanceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("asset/images/background_profile.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(10, 130, 10, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            commonTextWidget(
              text: "Hi, Khaled!",
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            commonTextWidget(
              text: "Here's Your Balance.",
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
            const SizedBox(height: 20),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: balanceTile(
                      title: "SAVINGS",
                      amount: '\$15,615',
                      progress: 0.72,
                      barColor: Color(0xFF3ECF8E),
                    ),
                  ),
                  const SizedBox(width: 50),
                  Expanded(
                    child: balanceTile(
                      title: "ASSETS",
                      amount: '\$9,615',
                      progress: 0.28,
                      barColor: Color(0xFFB5C5C3),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
