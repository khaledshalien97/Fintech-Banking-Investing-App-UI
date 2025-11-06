import 'package:flutter/material.dart';

class BalanceTabButton extends StatelessWidget {
  final String label;
  final bool filled;
  final Color fillColor;
  final Color borderColor;
  final Color textColor;
  final VoidCallback? onTap;

  const BalanceTabButton({
    super.key,
    required this.label,
    this.filled = false,
    this.fillColor = const Color(0xff33404F),
    this.borderColor = const Color(0xff00DDA3),
    this.textColor = Colors.white,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(28),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
        decoration: BoxDecoration(
          color: filled ? fillColor : Colors.transparent,
          borderRadius: BorderRadius.circular(28),
          border: filled ? null : Border.all(color: borderColor),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
