/*
*================================Copyright©=====================================
?Name        : detail_screen
*Author      : Axmadjon Isaqov
^Version     : CURRENT_VERSION
&Copyright   : Created by Axmadjon Isaqov on  19:14:22 21.04.2024*© 2024 @axiydev
!Description : solar_system in Dart
*===============================================================================
*/
import 'package:flutter/material.dart';
import 'package:solar_system/src/data/models/planet_enum.dart';
import 'package:solar_system/src/views/detail/detail_view.dart';

class DetailScreen extends StatelessWidget {
  final PlanetEnum planet;
  const DetailScreen({
    super.key,
    required this.planet,
  });

  @override
  Widget build(BuildContext context) {
    return DetailsView(
      planet: planet,
    );
  }
}
