import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../config/app_color.dart';
import 'lp_base_container.dart';
import 'lp_model.dart';

class OutlineWidget extends StatelessWidget {
  const OutlineWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;
    return LPBaseContainer(
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
          Text(
            '''■Date
June 13 (Thu) - 14 (Fri), 2024

■Location
Tokyo, Japan
docomo R&D OPEN LAB ODAIBA (Up to 200 people)

■About
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

class FeatureListTile extends StatelessWidget {
  const FeatureListTile({
    super.key,
    required this.title,
    required this.description,
  });
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: isMobile ? 28 : 48,
                fontWeight: FontWeight.bold,
                color: AppColor.primaryBlue,
              ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          description,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
        ),
      ],
    );
  }
}
