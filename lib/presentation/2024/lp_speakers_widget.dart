import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/link.dart';

import '../../domain/speaker_type.dart';
import 'lp_2024_model.dart';
import 'lp_base_container_2024.dart';

class Speakers2024Widget extends StatelessWidget {
  const Speakers2024Widget({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LP2024Model>().isMobile;

    return LPBase2024Container(
      isMobile: isMobile,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SelectableText(
            'Speakers',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 42 : 156,
                  height: 1,
                ),
          ),
          SizedBox(height: isMobile ? 20 : 40),
          GridView.count(
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: isMobile ? 15 / 10 : 8 / 10,
            crossAxisCount: isMobile ? 1 : 3,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: SpeakerType.values
                .map((speaker) => SpeakerItemWidget(speakerType: speaker))
                .toList(),
          ),
        ],
      ),
    );
  }
}

class SpeakerItemWidget extends StatelessWidget {
  const SpeakerItemWidget({
    super.key,
    required this.speakerType,
  });
  final SpeakerType speakerType;

  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LP2024Model>().isMobile;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: isMobile ? 80 : 160,
          child: ClipOval(
            child: Image.asset(speakerType.logoAssetName),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SelectableText(
          speakerType.name,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
        Link(
          uri: Uri.parse('https://twitter.com/${speakerType.xAccountName}'),
          target: LinkTarget.blank,
          builder: (context, cb) => TextButton(
            onPressed: cb,
            child: Text(
              '𝕏 @${speakerType.xAccountName}',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        //SizedBox(height: isMobile ? 10 : 20),
        SelectableText(
          speakerType.desc,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
