/*
*================================Copyright©=====================================
?Name        : home_view
*Author      : Axmadjon Isaqov
^Version     : CURRENT_VERSION
&Copyright   : Created by Axmadjon Isaqov on  19:14:02 21.04.2024*© 2024 @axiydev
!Description : solar_system in Dart
*===============================================================================
*/
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:solar_system/gen/assets.gen.dart';
import 'package:solar_system/src/data/models/planet_enum.dart';
import 'package:solar_system/src/utils/app_text_styles.dart';
import 'package:solar_system/src/views/detail/detail_screen.dart';
import 'package:solar_system/src/widgets/custom_hero.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<double> _animation;

  final double _position = 290 / 2 - 20;
  final double _position1 = ((sqrt(2) - 1) / sqrt(2)) * (290 / 2) - 10;
  final double _positionSun = 290 / 2 - 60;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 5,
      ),
    )..repeat();

    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          'SOLAR SYSTEM',
          style: AppTextStyles.robotoStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 290,
          height: 290,
          child: Stack(
            children: [
              AnimatedBuilder(
                animation: _animation,
                builder: (context, _) {
                  return Transform.rotate(
                    // angle: .0,
                    angle: 2 * pi * _animation.value,
                    child: SizedBox(
                      // color: Colors.blue,
                      height: 290,
                      width: 290,
                      child: Stack(
                        children: [
                          Positioned(
                            top: .0,
                            left: _position,
                            child: Assets.icons.earth.image(
                              width: 40,
                              height: 40,
                            ),
                          ),
                          Positioned(
                            bottom: .0,
                            left: _position,
                            child: Assets.icons.uranus.image(
                              width: 40,
                              height: 40,
                            ),
                          ),
                          Positioned(
                            top: _position,
                            left: -20,
                            child: Assets.icons.saturn.image(
                              width: 80,
                              height: 40,
                            ),
                          ),
                          Positioned(
                            top: _position,
                            right: .0,
                            child: Assets.icons.neptune.image(
                              width: 40,
                              height: 40,
                            ),
                          ),
                          Positioned(
                            top: _position1,
                            left: _position1,
                            child: Assets.icons.mercury.image(
                              width: 40,
                              height: 40,
                            ),
                          ),
                          Positioned(
                            top: _position1,
                            right: _position1,
                            child: Assets.icons.mars.image(
                              width: 40,
                              height: 40,
                            ),
                          ),
                          Positioned(
                            bottom: _position1,
                            left: _position1,
                            child: Assets.icons.venus.image(
                              width: 40,
                              height: 40,
                            ),
                          ),
                          Positioned(
                            bottom: _position1,
                            right: _position1,
                            child: Assets.icons.neptune1.image(
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Positioned(
                left: _positionSun,
                top: _positionSun,
                child: GestureDetector(
                  onTap: () => navigateToDetail(PlanetEnum.sun),
                  child: CustomHero(
                    tag: PlanetEnum.sun.name,
                    child: Assets.icons.sun.image(width: 120, height: 120),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void navigateToDetail(PlanetEnum planet) {
    Navigator.of(context).push(
      PageRouteBuilder(
        transitionDuration: const Duration(
          milliseconds: 500,
        ),
        reverseTransitionDuration: const Duration(
          milliseconds: 500,
        ),
        pageBuilder: (_, __, ___) => DetailScreen(
          planet: planet,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          final tween = Tween(begin: begin, end: end);
          final offsetAnimation = animation.drive(tween);
          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      ),
    );
  }
}
