import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solar_system/src/blocs/main/cubit/main_cubit.dart';
import 'package:solar_system/src/utils/app_colors.dart';
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
      ),
      body: CupertinoTabScaffold(
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
    );
  }
}
