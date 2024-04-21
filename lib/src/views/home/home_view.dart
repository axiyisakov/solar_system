/*
*================================Copyright©=====================================
?Name        : home_view
*Author      : Axmadjon Isaqov
^Version     : CURRENT_VERSION
&Copyright   : Created by Axmadjon Isaqov on  19:14:02 21.04.2024*© 2024 @axiydev
!Description : solar_system in Dart
*===============================================================================
*/
import 'package:flutter/material.dart';
import 'package:solar_system/gen/assets.gen.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Assets.icons.sun.image(
          width: 120,
        ),
      ),
    );
  }
}
