import 'package:fintech_banking_investing_ui/screens/common_widgets/app_bar_widget.dart';
import 'package:fintech_banking_investing_ui/screens/common_widgets/common_text_widgets.dart';
import 'package:fintech_banking_investing_ui/screens/dashboard_screen/widgets/container_tips.dart';
import 'package:fintech_banking_investing_ui/screens/dashboard_screen/widgets/my_card.dart';
import 'package:flutter/material.dart';

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
              SizedBox(height: 10),
              ContainerTips(),
              commonTextWidget(
                text: "my cards (4)",
                fontSize: 22,
                color: Color(0xff33404F),
                fontWeight: FontWeight.w700,
              ),
              SizedBox(height: 10),
              MyCard(),
            ],
          ),
        ),
      ),
    );
  }
}
