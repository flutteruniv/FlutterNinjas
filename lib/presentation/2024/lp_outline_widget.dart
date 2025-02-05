import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'lp_2024_model.dart';
import 'lp_base_container_2024.dart';

class Outline2024Widget extends StatelessWidget {
  const Outline2024Widget({super.key});
  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LP2024Model>().isMobile;
    return LPBase2024Container(
      isMobile: isMobile,
      padding: isMobile
          ? const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 32,
            )
          : const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 64,
            ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SelectableText(
            '''💙Date
June 13 (Thu) - 14 (Fri), 2024

💙Location
Tokyo, Japan
docomo R&D OPEN LAB ODAIBA (Up to 200 people)

💙About
FlutterNinjas is a brand-new Flutter conference for English speakers in Tokyo, Japan. \nThis is the first Flutter event for English speakers in Japan!!
            ''',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
          ),
        ],
      ),
    );
  }
}
