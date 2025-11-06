import 'package:fintech_banking_investing_ui/screens/common_widgets/common_text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Align spendingContainer() {
  return Align(
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
              ),
              child: Icon(Icons.close_rounded, color: Colors.white, size: 20),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 150,
                height: 70,
                child: SvgPicture.asset("asset/svg_images/spending.svg"),
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
  );
}
