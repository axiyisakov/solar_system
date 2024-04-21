/*
*================================Copyright©=====================================
?Name        : main_view
*Author      : Axmadjon Isaqov
^Version     : CURRENT_VERSION
&Copyright   : Created by Axmadjon Isaqov on  19:13:19 21.04.2024*© 2024 @axiydev
!Description : solar_system in Dart
*===============================================================================
*/
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solar_system/src/blocs/main/cubit/main_cubit.dart';
import 'package:solar_system/src/utils/app_colors.dart';
import 'package:solar_system/src/utils/app_text_styles.dart';
import 'package:solar_system/src/views/home/home_screen.dart';
import 'package:solar_system/src/views/settings/settings_screen.dart';

final _pages = [
  const HomeScreen(),
  const SettingsScreen(),
];

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<MainCubit>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          'SOLAR SYSTEM',
          style: AppTextStyles.robotoStyle(),
        ),
      ),
      body: Stack(
        children: [
          const _AppBackground(),
          CupertinoTabScaffold(
            backgroundColor: Colors.transparent,
            controller: cubit.controller,
            tabBuilder: (context, index) => CupertinoTabView(
              builder: (context) {
                return _pages.elementAt(index);
              },
            ),
            tabBar: CupertinoTabBar(
              backgroundColor: Colors.transparent,
              activeColor: Colors.white,
              inactiveColor: AppColors.black,
              onTap: cubit.changePage,
              border: null,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Preferences',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AppBackground extends StatefulWidget {
  const _AppBackground({super.key});

  @override
  State<_AppBackground> createState() => _AppBackgroundState();
}

class _AppBackgroundState extends State<_AppBackground> {
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
