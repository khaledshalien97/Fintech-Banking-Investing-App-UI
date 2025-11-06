import 'package:fintech_banking_investing_ui/screens/balance_screen/widgets.dart/balance_tab_button.dart';
import 'package:fintech_banking_investing_ui/screens/balance_screen/widgets.dart/weekly_chart.dart';
import 'package:flutter/material.dart';

Positioned chartContainer() {
  return Positioned.fill(
    top: 390,
    child: SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 160),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BalanceTabButton(
                label: "Assets",
                filled: true,
                fillColor: Color(0xff33404F),
                textColor: Colors.white,
              ),
              BalanceTabButton(
                label: "Debt",
                filled: false,
                borderColor: Color(0xff00DDA3),
                textColor: Color(0xff00DDA3),
              ),
              BalanceTabButton(
                label: "Income",
                filled: false,
                borderColor: Color(0xffB5C5C3),
                textColor: Color(0xffB5C5C3),
              ),
            ],
          ),
          const SizedBox(height: 22),
          SizedBox(width: double.infinity, height: 200, child: WeeklyChart()),
        ],
      ),
    ),
  );
}
