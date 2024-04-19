import 'package:flutter/material.dart';
import 'package:solar_system/gen/assets.gen.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Assets.icons.sun.image(
          width: 120,
        ),
      ),
    );
  }
}
