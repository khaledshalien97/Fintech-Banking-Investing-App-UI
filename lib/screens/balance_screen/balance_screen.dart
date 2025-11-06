import 'package:fintech_banking_investing_ui/screens/balance_screen/widgets.dart/balance_total.dart';
import 'package:fintech_banking_investing_ui/screens/balance_screen/widgets.dart/chart_container.dart';
import 'package:fintech_banking_investing_ui/screens/balance_screen/widgets.dart/custome_appbar_balance.dart';
import 'package:fintech_banking_investing_ui/screens/balance_screen/widgets.dart/spending.dart';
import 'package:fintech_banking_investing_ui/screens/common_widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class BalanceScreen extends StatelessWidget {
  const BalanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appbarWidget(color: Colors.white),
      body: Stack(
        children: [
          customBalanceAppbar(),
          balanceTotal(),
          chartContainer(),
          spendingContainer(),
        ],
      ),
    );
  }
}
