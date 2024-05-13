import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../config/app_color.dart';
import 'lp_base_container.dart';
import 'lp_model.dart';

enum GoldSponsorType {
  codeMagic(
    name: 'Codemagic',
    xAccountName: 'codemagicio',
    logoAssetName: 'resources/images/codemagic.jpeg',
  ),
  moneyForward(
    name: 'Money Forward',
    xAccountName: 'moneyforwardDev',
    logoAssetName: 'resources/images/moneyforward.png',
  ),
  ;

  const GoldSponsorType({
    required this.name,
    required this.xAccountName,
    required this.logoAssetName,
  });

  final String name;
  final String xAccountName;
  final String logoAssetName;
}

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
          Text(
            'Sponsors',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 42 : 156,
                  height: 1,
                ),
          ),
          SizedBox(height: isMobile ? 20 : 40),
          // SizedBox(height: isMobile ? 20 : 40),
          // Text(
          //   'Gold Sponsors',
          //   style: Theme.of(context).textTheme.displayLarge?.copyWith(
          //         fontSize: isMobile ? 28 : 56,
          //         height: 1,
          //         color: Colors.white,
          //       ),
          // ),
          // const SizedBox(height: 20),
          // GridView.count(
          //   crossAxisCount: isMobile ? 1 : 2,
          //   childAspectRatio: 1,
          //   physics: const NeverScrollableScrollPhysics(),
          //   shrinkWrap: true,
          //   children: GoldSponsorType.values
          //       .map((sponsor) => GoldSponsorItemWidget(type: sponsor))
          //       .toList(),
          // ),
          Text(
            'Community sponsor is from \$330.\nEven a small sponsorship would be helpful.',
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
                'Contact',
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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: isMobile ? 120 : 240,
          child: ClipOval(
            child: Image.asset(type.logoAssetName),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          type.name,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
        Link(
          uri: Uri.parse('https://twitter.com/${type.xAccountName}'),
          target: LinkTarget.blank,
          builder: (context, cb) => TextButton(
            onPressed: cb,
            child: Text(
              '𝕏 @${type.xAccountName}',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Colors.white,
                    fontSize: 11,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
