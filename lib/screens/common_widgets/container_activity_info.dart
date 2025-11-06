import 'package:fintech_banking_investing_ui/screens/common_widgets/activity_card.dart';
import 'package:fintech_banking_investing_ui/screens/common_widgets/common_text_widgets.dart';
import 'package:fintech_banking_investing_ui/screens/common_widgets/txn_tile.dart';
import 'package:flutter/material.dart';

class ContainerActivityInfo extends StatelessWidget {
  const ContainerActivityInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.48,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(36),
            topRight: Radius.circular(36),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                commonTextWidget(
                  text: "Activities",
                  fontSize: 22,
                  color: Color(0xff33404F),
                  fontWeight: FontWeight.w700,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 30),
                  child: Row(
                    children: [
                      ActivityCard(
                        label: "Account",
                        icon: "asset/svg_images/account.svg",
                      ),
                      ActivityCard(
                        label: "Privecy",
                        icon: "asset/svg_images/privecy.svg",
                      ),
                      ActivityCard(
                        label: "Help",
                        icon: "asset/svg_images/help.svg",
                      ),
                    ],
                  ),
                ),
                commonTextWidget(
                  text: "Transactions",
                  fontSize: 22,
                  color: Color(0xff33404F),
                  fontWeight: FontWeight.w700,
                ),

                txnTile(
                  title: "Food & Beverage",
                  subtitle: "Five Lods",
                  amount: "+28.11",
                  date: "Feb 21",
                  iconName: "asset/svg_images/up_icon.svg",
                ),
                txnTile(
                  title: "Shopping",
                  subtitle: "H&M 1257 ****",
                  amount: "-157.64",
                  date: "Jan 14",
                  iconName: "asset/svg_images/down_icon.svg",
                ),
                txnTile(
                  title: "Salary Income",
                  subtitle: "Pharaos Tech, Inc",
                  amount: "+3,800.00",
                  date: "jan 13",
                  iconName: "asset/svg_images/up_icon.svg",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
