/*
*================================Copyright©=====================================
?Name        : main_view
*Author      : Axmadjon Isaqov
^Version     : CURRENT_VERSION
&Copyright   : Created by Axmadjon Isaqov on  19:13:19 21.04.2024*© 2024 @axiydev
!Description : solar_system in Dart
*===============================================================================
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solar_system/src/blocs/main/cubit/main_cubit.dart';
import 'package:solar_system/src/utils/app_colors.dart';
import 'package:solar_system/src/views/home/home_screen.dart';
import 'package:solar_system/src/views/settings/settings_screen.dart';
import 'package:solar_system/src/widgets/background_widget.dart';

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
      body: Stack(
        children: [
          const AppBackground(),
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
