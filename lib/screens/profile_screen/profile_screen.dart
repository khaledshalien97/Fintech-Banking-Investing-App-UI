import 'package:fintech_banking_investing_ui/screens/common_widgets/app_bar_widget.dart';
import 'package:fintech_banking_investing_ui/screens/profile_screen/widgets/container_activity_info.dart';
import 'package:fintech_banking_investing_ui/screens/profile_screen/widgets/container_balance_info.dart';

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appbarWidget(color: Colors.white),
      body: Stack(children: [ContainerBalanceInfo(), ContainerActivityInfo()]),
    );
  }
}
