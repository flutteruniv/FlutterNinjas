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
            'Platinum',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 28 : 56,
                  height: 1,
                  color: AppColor.platinum,
                ),
          ),
          GridView.count(
            crossAxisCount: isMobile ? 1 : 1,
            childAspectRatio: 10 / 2,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: PlatinumSponsorType.values
                .map((sponsor) => PlatinumSponsorItemWidget(type: sponsor))
                .toList(),
          ),
          SizedBox(height: isMobile ? 80 : 90),
          SelectableText(
            'Gold',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 28 : 56,
                  height: 1,
                  color: AppColor.primaryYellowColor,
                ),
          ),
          GridView.count(
            crossAxisCount: isMobile ? 1 : 1,
            childAspectRatio: 10 / 2,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: GoldSponsorType.values
                .map((sponsor) => GoldSponsorItemWidget(type: sponsor))
                .toList(),
          ),
          SizedBox(height: isMobile ? 80 : 90),
          SelectableText(
            'Swag',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 28 : 56,
                  height: 1,
                  color: AppColor.themeBrown,
                ),
          ),
          GridView.count(
            crossAxisCount: isMobile ? 1 : 1,
            childAspectRatio: 40 / 6,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: SwagSponsorType.values
                .map((sponsor) => SwagSponsorItemWidget(type: sponsor))
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
          SizedBox(height: isMobile ? 80 : 90),
          SelectableText(
            'Community sponsorship is still available.\nNote that it doesn\'t include an attendee ticket.',
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
              launchUrlString('https://buy.stripe.com/3cscPW73x9ah9P26oo');
            },
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Be a sponsor',
                style: TextStyle(fontSize: 32),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PlatinumSponsorItemWidget extends StatelessWidget {
  const PlatinumSponsorItemWidget({
    super.key,
    required this.type,
  });
  final PlatinumSponsorType type;

  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;

    return InkWell(
      onTap: () {
        launchUrlString(type.url);
      },
      child: Padding(
        padding: EdgeInsets.all(isMobile ? 16 : 40),
        child: Image.asset(
          type.logoAssetName,
          fit: BoxFit.contain,
        ),
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
        padding: EdgeInsets.all(isMobile ? 4 : 20),
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

class SwagSponsorItemWidget extends StatelessWidget {
  const SwagSponsorItemWidget({
    super.key,
    required this.type,
  });
  final SwagSponsorType type;

  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;

    return InkWell(
      onTap: () {
        launchUrlString(type.url);
      },
      child: Padding(
        padding: EdgeInsets.all(isMobile ? 4 : 20),
        child: Image.asset(
          type.logoAssetName,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
