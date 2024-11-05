import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../config/app_color.dart';
import '../lp_base_container.dart';
import 'lp_2024_model.dart';

class Top2024Widget extends StatelessWidget {
  const Top2024Widget({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LP2024Model>().isMobile;

    return LPBaseContainer(
      color: AppColor.backgroundNavy,
      isMobile: isMobile,
      padding: const EdgeInsets.symmetric(
        vertical: 0,
      ),
      child: Image.asset(
        'resources/images/FlutterNinjas-header-1.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
