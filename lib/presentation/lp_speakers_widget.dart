import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../config/app_color.dart';
import 'lp_base_container.dart';
import 'lp_model.dart';

enum SpeakerType {
  remi(
    name: 'Remi Rousselet',
    title: 'Special Guest',
    xAccountName: 'remi_rousselet',
    logoAssetName: 'resources/images/remi_profile.jpg',
    desc:
        'The creator of the Flutter packages provider, flutter_hooks, riverpod, and freezed.',
  ),
  majid(
    name: 'Majid Hajian',
    title: 'Special Guest',
    xAccountName: 'mhadaily',
    logoAssetName: 'resources/images/majid_profile.jpg',
    desc:
        'Flutter / Dart GDE, Organizer of Flutter Vikings, and the author of flutterengineering.io',
  ),
  ;

  const SpeakerType({
    required this.name,
    required this.title,
    required this.xAccountName,
    required this.logoAssetName,
    required this.desc,
  });

  final String name;
  final String title;
  final String xAccountName;
  final String logoAssetName;
  final String desc;
}

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
          Text(
            'Speakers',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 42 : 156,
                  height: 1,
                ),
          ),
          SizedBox(height: isMobile ? 20 : 40),
          ...SpeakerType.values.map(
            (speaker) => SpeakerItemWidget(judgeType: speaker),
          ),
          SizedBox(height: isMobile ? 10 : 20),
          Text(
            'Besides them, we call for papers. \nIt is open from March 18th to April 17th (Japan standard time).',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: isMobile ? 20 : 40),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.ninjaBlack,
            ),
            onPressed: () {
              launchUrlString('https://sessionize.com/flutterninjas-2024/');
            },
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Submit talk',
                style: TextStyle(fontSize: 32),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SpeakerItemWidget extends StatelessWidget {
  const SpeakerItemWidget({
    super.key,
    required this.judgeType,
  });
  final SpeakerType judgeType;

  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: isMobile ? 80 : 160,
          child: ClipOval(
            child: Image.asset(judgeType.logoAssetName),
          ),
        ),
        Text(
          judgeType.name,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
        Link(
          uri: Uri.parse('https://twitter.com/${judgeType.xAccountName}'),
          target: LinkTarget.blank,
          builder: (context, cb) => TextButton(
            onPressed: cb,
            child: Text(
              '𝕏 @${judgeType.xAccountName}',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        //SizedBox(height: isMobile ? 10 : 20),
        Text(
          judgeType.desc,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: isMobile ? 20 : 40),
      ],
    );
  }
}
