import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: const Text(
        "Gervin Paul M. Nicdao © 2024",
        style: TextStyle(
          fontSize: 13,
          letterSpacing: 1,
          fontWeight: FontWeight.w600,
          color: CustomColor.whiteSecondary,
        ),
      ),
    );
  }
}
