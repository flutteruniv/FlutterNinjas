import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/link.dart';

import 'lp_base_container.dart';
import 'lp_model.dart';

enum OrganizerType {
  kboy(
    name: 'Kei Fujikawa',
    xAccountName: 'kboy_silvergym',
    logoAssetName: 'resources/images/kboy.jpeg',
  ),
  kosuke(
    name: 'Kosuke Saigusa',
    xAccountName: 'KosukeSaigusa',
    logoAssetName: 'resources/images/kosuke.jpeg',
  ),
  masaki(
    name: 'Masaki Sato',
    xAccountName: 'masaki_hideout',
    logoAssetName: 'resources/images/masaki.jpeg',
  ),
  shohei(
    name: 'Shohei Ogawa',
    xAccountName: 'heyhey1028',
    logoAssetName: 'resources/images/heyhey.jpeg',
  ),
  yanoo(
    name: 'Yushi Nogami',
    xAccountName: 'yanooo_jp',
    logoAssetName: 'resources/images/yanoo.jpeg',
  ),
  kitsu(
    name: 'Kazuki Kitsukawa',
    xAccountName: 'kitsu2_',
    logoAssetName: 'resources/images/kitsu.jpeg',
  ),
  tsuruoka(
    name: 'Hideki Tsuruoka',
    xAccountName: 'h_tsuruo',
    logoAssetName: 'resources/images/tsuruoka.jpeg',
  ),
  ;

  const OrganizerType({
    required this.name,
    required this.xAccountName,
    required this.logoAssetName,
  });

  final String name;
  final String xAccountName;
  final String logoAssetName;
}

class OrganizersWidget extends StatelessWidget {
  const OrganizersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;

    return LPBaseContainer(
      isMobile: isMobile,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Team',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 42 : 156,
                  height: 1,
                ),
          ),
          SizedBox(height: isMobile ? 20 : 40),
          GridView.count(
            crossAxisCount: 4,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: OrganizerType.values
                .map((organizer) => OrganizerItemWidget(type: organizer))
                .toList(),
          ),
        ],
      ),
    );
  }
}

class OrganizerItemWidget extends StatelessWidget {
  const OrganizerItemWidget({
    super.key,
    required this.type,
  });
  final OrganizerType type;

  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: isMobile ? 40 : 80,
          child: ClipOval(
            child: Image.asset(type.logoAssetName),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          type.name,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
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
