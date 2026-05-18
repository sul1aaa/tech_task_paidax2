import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final Color color;

  const AppDivider({
    super.key,
    this.padding = const EdgeInsets.symmetric(horizontal: 17),
    this.color = const Color(0xFFF1F5F9),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Divider(
        height: 1,
        color: color,
      ),
    );
  }
}
