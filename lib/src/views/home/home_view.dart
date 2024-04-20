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
