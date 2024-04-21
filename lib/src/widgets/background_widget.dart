import 'dart:math';

import 'package:flutter/material.dart';
import 'package:solar_system/src/utils/app_colors.dart';

class AppBackground extends StatefulWidget {
  const AppBackground({super.key});

  @override
  State<AppBackground> createState() => AppBackgroundState();
}

class AppBackgroundState extends State<AppBackground> {
  final Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          color: AppColors.firstColor,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 80,
                  offset: const Offset(0, 40),
                  spreadRadius: .0,
                  color: const Color(0xFF000000).withOpacity(1 / 4),
                  blurStyle: BlurStyle.solid,
                ),
              ],
              gradient: RadialGradient(
                center: Alignment.topCenter,
                radius: 1,
                colors: [
                  AppColors.secondColor.withOpacity(1),
                  AppColors.firstColor.withOpacity(1),
                  AppColors.thirdColor.withOpacity(0.1),
                ],
              ),
            ),
          ),
        ),
        ...List.generate(
          random.nextInt(100) + 50,
          (index) => Container(
            transform: Matrix4.translationValues(
              random.nextDouble() * MediaQuery.sizeOf(context).width,
              random.nextDouble() * MediaQuery.sizeOf(context).height,
              .0,
            ),
            child: CircleAvatar(
              backgroundColor: Colors.white.withOpacity(.6),
              radius: (random.nextInt(5) + 1).toDouble(),
              foregroundColor: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
