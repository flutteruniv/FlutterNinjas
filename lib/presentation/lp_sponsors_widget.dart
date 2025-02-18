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
          const SizedBox(height: 80),
          SelectableText(
            'We are looking for sponsors!',
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
