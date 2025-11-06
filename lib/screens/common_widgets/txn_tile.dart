import 'package:fintech_banking_investing_ui/screens/common_widgets/common_text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

ListTile txnTile({
  required String iconName,
  required String title,
  required String subtitle,
  required String amount,
  required String date,
}) {
  return ListTile(
    contentPadding: EdgeInsets.zero,
    leading: SizedBox(width: 40, height: 40, child: SvgPicture.asset(iconName)),
    title: commonTextWidget(
      text: title,
      fontSize: 22,
      color: Color(0xff33404F),
      fontWeight: FontWeight.bold,
    ),
    subtitle: commonTextWidget(text: subtitle, fontSize: 14,color: Color(0xff33404F).withOpacity(0.6),fontWeight: FontWeight.w500),
    trailing: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        commonTextWidget(
          text: amount,
          fontSize: 22,
          color: Color(0xff33404F),
          fontWeight: FontWeight.bold,
        ),

        const SizedBox(height: 2),
        commonTextWidget(
          text: date,
          fontSize: 14,
          color: Color(0xff33404F).withOpacity(0.5),
          fontWeight: FontWeight.w500,
        ),
      ],
    ),
  );
}
