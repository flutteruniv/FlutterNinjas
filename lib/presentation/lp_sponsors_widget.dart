import 'package:flutter/material.dart';
import 'package:flutterninjas/domain/sponsor_type.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../config/app_color.dart';
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
          SizedBox(height: isMobile ? 20 : 40),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.ninjaBlack,
            ),
            onPressed: () {
              launchUrlString('https://forms.gle/XMQjj9D4QPc3yy66A');
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Contact us!',
                style: TextStyle(fontSize: 16),
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
