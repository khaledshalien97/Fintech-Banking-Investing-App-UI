import 'package:fintech_banking_investing_ui/screens/common_widgets/common_text_widgets.dart';
import 'package:flutter/material.dart';

Widget balanceTile({
  required String title,
  required String amount,
  required double progress,
  required Color barColor,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      commonTextWidget(text: title, fontSize: 16, color: Colors.white),

      const SizedBox(height: 6),

      commonTextWidget(
        text: amount,
        fontSize: 22,
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
      const SizedBox(height: 8),
      LinearProgressIndicator(
        value: progress,
        minHeight: 5,
        backgroundColor: Colors.white,
        valueColor: AlwaysStoppedAnimation<Color>(barColor),
        borderRadius: BorderRadius.circular(10),
      ),
    ],
  );
}
