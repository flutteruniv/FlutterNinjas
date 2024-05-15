import 'package:flutter/material.dart';
import 'package:flutterninjas/domain/sponsor_type.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../config/app_color.dart';
import 'lp_base_container.dart';
import 'lp_model.dart';

class SponsorsWidget extends StatelessWidget {
  const SponsorsWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;
    return LPBaseContainer(
      isMobile: isMobile,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SelectableText(
            'Sponsors',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 42 : 156,
                  height: 1,
                ),
          ),
          const SizedBox(height: 80),
          SelectableText(
            'Gold',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 28 : 56,
                  height: 1,
                  color: Colors.white,
                ),
          ),
          GridView.count(
            crossAxisCount: isMobile ? 1 : 2,
            childAspectRatio: 10 / 4,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: GoldSponsorType.values
                .map((sponsor) => GoldSponsorItemWidget(type: sponsor))
                .toList(),
          ),
          const SizedBox(height: 80),
          SelectableText(
            'Community',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 28 : 56,
                  height: 1,
                  color: Colors.white,
                ),
          ),
          GridView.count(
            crossAxisCount: isMobile ? 2 : 6,
            childAspectRatio: 1,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            mainAxisSpacing: 8,
            crossAxisSpacing: 16,
            children: CommunitySponsorType.values
                .map((sponsor) => CommunitySponsorItemWidget(type: sponsor))
                .toList(),
          ),
          const SizedBox(height: 80),
          SelectableText(
            'Sponsorship is from \$330.\nPersonal sponsor is also welcome!',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.ninjaBlack,
            ),
            onPressed: () {
              launchUrlString('https://forms.gle/XMQjj9D4QPc3yy66A');
            },
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Be a sponsor!',
                style: TextStyle(fontSize: 32),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GoldSponsorItemWidget extends StatelessWidget {
  const GoldSponsorItemWidget({
    super.key,
    required this.type,
  });
  final GoldSponsorType type;

  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;

    return InkWell(
      onTap: () {
        launchUrlString(type.url);
      },
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Image.asset(
          type.logoAssetName,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

class CommunitySponsorItemWidget extends StatelessWidget {
  const CommunitySponsorItemWidget({
    super.key,
    required this.type,
  });
  final CommunitySponsorType type;

  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;

    return InkWell(
      onTap: () {
        launchUrlString(type.url);
      },
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Image.asset(
          type.logoAssetName,
        ),
      ),
    );
  }
}
