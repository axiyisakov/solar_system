/*
*================================Copyright©=====================================
?Name        : detail_view
*Author      : Axmadjon Isaqov
^Version     : CURRENT_VERSION
&Copyright   : Created by Axmadjon Isaqov on  19:14:16 21.04.2024*© 2024 @axiydev
!Description : solar_system in Dart
*===============================================================================
*/
import 'package:flutter/material.dart';
import 'package:solar_system/gen/assets.gen.dart';
import 'package:solar_system/src/data/models/planet_enum.dart';
import 'package:solar_system/src/utils/app_colors.dart';
import 'package:solar_system/src/utils/app_text_styles.dart';
import 'package:solar_system/src/widgets/custom_hero.dart';

class DetailsView extends StatelessWidget {
  final PlanetEnum planet;
  const DetailsView({
    super.key,
    required this.planet,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: .0,
        foregroundColor: Colors.white,
        title: Text(
          planet.name.toUpperCase(),
          style: AppTextStyles.bungeeStyle(),
        ),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: AppColors.black.withOpacity(.2),
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomHero(
              tag: planet.name,
              child: Assets.icons.sun.image(
                height: MediaQuery.sizeOf(context).width - 100,
                width: MediaQuery.sizeOf(context).width - 100,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
