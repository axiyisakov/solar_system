/*
*================================Copyright©=====================================
?Name        : main
*Author      : Axmadjon Isaqov
^Version     : CURRENT_VERSION
&Copyright   : Created by Axmadjon Isaqov on  19:14:28 21.04.2024*© 2024 @axiydev
!Description : solar_system in Dart
*===============================================================================
*/
import 'package:flutter/material.dart';
import 'package:solar_system/src/views/main/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}
