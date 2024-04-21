/*
*================================Copyright©=====================================
?Name        : main_screen
*Author      : Axmadjon Isaqov
^Version     : CURRENT_VERSION
&Copyright   : Created by Axmadjon Isaqov on  19:13:26 21.04.2024*© 2024 @axiydev
!Description : solar_system in Dart
*===============================================================================
*/
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solar_system/src/blocs/main/cubit/main_cubit.dart';
import 'package:solar_system/src/views/main/main_view.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainCubit>(
      create: (_) => MainCubit(),
      child: const MainView(),
    );
  }
}
