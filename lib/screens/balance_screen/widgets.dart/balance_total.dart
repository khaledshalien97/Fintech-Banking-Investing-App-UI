import 'package:fintech_banking_investing_ui/screens/common_widgets/common_text_widgets.dart';
import 'package:flutter/material.dart';

Positioned balanceTotal() {
  return Positioned(
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
  );
}
