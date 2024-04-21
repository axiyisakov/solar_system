/*
*================================Copyright©=====================================
?Name        : home_screen
*Author      : Axmadjon Isaqov
^Version     : CURRENT_VERSION
&Copyright   : Created by Axmadjon Isaqov on  19:14:08 21.04.2024*© 2024 @axiydev
!Description : solar_system in Dart
*===============================================================================
*/
import 'package:flutter/material.dart';
import 'package:solar_system/src/views/home/home_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const RepaintBoundary(
      child: HomeView(),
    );
  }
}
