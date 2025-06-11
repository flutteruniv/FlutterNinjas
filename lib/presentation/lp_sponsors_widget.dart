import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../config/app_color.dart';
import '../domain/sponsor_type.dart';
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
                  color: AppColor.primaryYellowColor,
                ),
          ),
          SizedBox(height: isMobile ? 16 : 24),
          GridView.count(
            crossAxisCount: isMobile ? 1 : 1,
            childAspectRatio: 10 / 4,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: GoldSponsorType.values
                .map((sponsor) => GoldSponsorItemWidget(type: sponsor))
                .toList(),
          ),
          SizedBox(height: isMobile ? 80 : 90),
          SelectableText(
            'Silver',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 28 : 56,
                  height: 1,
                  color: Colors.white,
                ),
          ),
          SizedBox(height: isMobile ? 16 : 24),
          GridView.count(
            crossAxisCount: isMobile ? 3 : 3,
            childAspectRatio: 1,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            mainAxisSpacing: 8,
            crossAxisSpacing: 16,
            children: SilverSponsorType.values
                .map((sponsor) => SilverSponsorItemWidget(type: sponsor))
                .toList(),
          ),
          SizedBox(height: isMobile ? 80 : 90),
          SelectableText(
            'App Sponsor',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 28 : 56,
                  height: 1,
                  color: Colors.white,
                ),
          ),
          SizedBox(height: isMobile ? 16 : 24),
          SizedBox(
            width: isMobile ? 120 : 270,
            height: isMobile ? 120 : 270,
            child: const AppSponsorItemWidget(type: AppSponsorType.nekologic),
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
          SizedBox(height: isMobile ? 16 : 24),
          GridView.count(
            crossAxisCount: isMobile ? 3 : 6,
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
            'We\'re looking for sponsors!',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 28 : 56,
                  height: 1,
                  color: Colors.white,
                ),
          ),
          SizedBox(height: isMobile ? 16 : 24),
          SelectableText(
            'Support FlutterNinjas in a way that suits you.\n'
            'Community Sponsorship offers logo display only, while higher tiers come with additional benefits.\n'
            'You can complete your Community Sponsorship online now. For Silver or higher, please contact us for details.',
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
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            ),
            onPressed: () {
              launchUrlString('https://buy.stripe.com/fZecPWbjNeuBaT6bIR');
            },
            child: const Text(
              '🤝 Support as a Community Sponsor (¥55,000)',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.ninjaBlack,
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            ),
            onPressed: () {
              launchUrlString('https://forms.gle/XMQjj9D4QPc3yy66A');
            },
            child: const Text(
              '📩 Become a Silver Sponsor or Above',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
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
        padding: EdgeInsets.all(isMobile ? 4 : 20),
        child: Image.asset(
          type.logoAssetName,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

class SilverSponsorItemWidget extends StatelessWidget {
  const SilverSponsorItemWidget({
    super.key,
    required this.type,
  });
  final SilverSponsorType type;

  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;

    return InkWell(
      onTap: () {
        launchUrlString(type.url);
      },
      child: Padding(
        padding: EdgeInsets.all(isMobile ? 8 : 40),
        child: Image.asset(
          type.logoAssetName,
        ),
      ),
    );
  }
}

class AppSponsorItemWidget extends StatelessWidget {
  const AppSponsorItemWidget({
    super.key,
    required this.type,
  });
  final AppSponsorType type;

  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;

    return InkWell(
      onTap: () {
        launchUrlString(type.url);
      },
      child: Padding(
        padding: EdgeInsets.all(isMobile ? 8 : 40),
        child: Image.asset(
          type.logoAssetName,
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
