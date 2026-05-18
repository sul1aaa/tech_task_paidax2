import 'package:flutter/material.dart';
import 'package:tech_task_paidax2/themes/theme.dart';

class SuccessIconGreen extends StatelessWidget {
  const SuccessIconGreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 136,
      height: 136,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Color(0x8000BC7D),
            offset: Offset(0, 8),
            blurRadius: 24,
            spreadRadius: -8,
          ),
        ],
      ),
      child: Center(
        child: Container(
          width: 116,
          height: 116,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFD3F3E8),
          ),
          child: Center(
            child: Container(
              width: 96,
              height: 96,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFF00BC7D),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x8000BC7D),
                    offset: const Offset(0, 8),
                    blurRadius: 24,
                    spreadRadius: -8,
                  ),
                ],
              ),
              child: Center(
                  child: Icon(
                Icons.check_rounded,
                size: 40,
                color: PaidaxColors.bg,
              )),
            ),
          ),
        ),
      ),
    );
  }
}
