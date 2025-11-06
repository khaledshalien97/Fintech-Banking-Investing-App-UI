import 'package:fintech_banking_investing_ui/screens/common_widgets/common_text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar appbarWidget({Color? color}) {
  return AppBar(
    leadingWidth: 50,
    actionsPadding: EdgeInsets.all(15),
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: commonTextWidget(
      text: "INVETO",
      color: color,
      fontWeight: FontWeight.w600,
      fontSize: 22,
    ),
    centerTitle: false,
    leading: Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SvgPicture.asset("asset/svg_images/logo.svg", color: color),
    ),
    actions: [SvgPicture.asset("asset/svg_images/menu.svg", color: color)],
  );
}
