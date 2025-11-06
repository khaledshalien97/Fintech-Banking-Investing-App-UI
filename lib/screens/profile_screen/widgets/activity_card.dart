import 'package:fintech_banking_investing_ui/screens/common_widgets/common_text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActivityCard extends StatelessWidget {
  final String icon;
  final String label;
  const ActivityCard({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(right: 10, left: 5),
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Color(0x1A000000),
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icon, width: 60, height: 60),
            SizedBox(height: 10),
            commonTextWidget(
              text: label,
              fontSize: 14,
              color: Color(0xff33404F),
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
      ),
    );
  }
}
