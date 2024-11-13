import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../domain/speaker_type.dart';
import '../config/app_color.dart';
import 'lp_base_container.dart';
import 'lp_model.dart';

class SpeakersWidget extends StatelessWidget {
  const SpeakersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;

    return LPBaseContainer(
      isMobile: isMobile,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SelectableText(
            'CfPs',
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
              launchUrlString('https://sessionize.com/flutterninjas-2025/');
            },
            child: const Text('Submit your talk!'),
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
    final isMobile = context.watch<LPModel>().isMobile;

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
