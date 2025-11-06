import 'package:flutter/material.dart';

Positioned customBalanceAppbar() {
  return Positioned(
    top: -450,
    left: -130,
    child: Container(
      height: 700,
      width: 700,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("asset/images/background_balance.png"),
          fit: BoxFit.cover,
        ),
        shape: BoxShape.circle,
      ),
    ),
  );
}
