import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

BoxDecoration kHeaderDecoration = BoxDecoration(
  gradient: const LinearGradient(
    colors: [
      Colors.transparent,
      CustomColor.bgLight1,
    ],
  ),
  borderRadius: BorderRadius.circular(100),
);

LinearGradient customGradient = const LinearGradient(
  colors: [
    Color.fromARGB(95, 30, 136, 229),
    Color.fromARGB(197, 51, 133, 205),
  ],
);
