import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/link.dart';

import '../../domain/2024/organizer_type.dart';
import 'lp_2024_model.dart';
import 'lp_base_container_2024.dart';

class Organizers2024Widget extends StatelessWidget {
  const Organizers2024Widget({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LP2024Model>().isMobile;

    return LPBase2024Container(
      isMobile: isMobile,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SelectableText(
            'Team',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 42 : 156,
                  height: 1,
                ),
          ),
          SizedBox(height: isMobile ? 20 : 40),
          GridView.count(
            crossAxisCount: isMobile ? 2 : 4,
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
    final isMobile = context.watch<LP2024Model>().isMobile;

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
        SelectableText(
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
