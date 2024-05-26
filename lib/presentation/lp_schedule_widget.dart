import 'package:flutter/material.dart';
import 'package:flutterninjas/config/app_color.dart';
import 'package:flutterninjas/domain/speaker_type.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'lp_base_container.dart';
import 'lp_model.dart';

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;
    return LPBaseContainer(
      isMobile: isMobile,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SelectableText(
            'Schedule',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 42 : 156,
                  height: 1,
                ),
          ),
          const SizedBox(height: 32),
          isMobile
              ? const Column(
                  children: [
                    Day0ListView(),
                    SizedBox(height: 64),
                    Day1ListView(),
                    SizedBox(height: 64),
                    Day2ListView(),
                  ],
                )
              : const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Day0ListView(),
                    ),
                    SizedBox(width: 32),
                    Expanded(
                      child: Day1ListView(),
                    ),
                    SizedBox(width: 32),
                    Expanded(
                      child: Day2ListView(),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}

class Day0ListView extends StatelessWidget {
  const Day0ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: const [
        DateWidget('Jun 12'),
        SizedBox(height: 32),
        Divider(
          color: Colors.white24,
        ),
        BreakWidget('7:00 pm ~ 10:00 pm', 'Pre-Party @Higashi-Ginza'),
      ],
    );
  }
}

class Day1ListView extends StatelessWidget {
  const Day1ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: const [
        DateWidget('Jun 13'),
        SizedBox(height: 32),
        Divider(
          color: Colors.white24,
        ),
        BreakWidget('9:30 am', 'Door Open'),
        BreakWidget('10:00 am ~ 10:15 am', 'Opening talk'),
        SessionWidget(SpeakerType.remi),
        SessionWidget(SpeakerType.parth),
        BreakWidget('', 'Lunch Break🍙'),
        SessionWidget(SpeakerType.manuela),
        SessionWidget(SpeakerType.akanksha),
        SessionWidget(SpeakerType.sasha),
        BreakWidget('', 'Coffee Break☕'),
        SessionWidget(SpeakerType.aoi),
        SessionWidget(SpeakerType.marcin),
        SessionWidget(SpeakerType.kevin),
        BreakWidget('', 'Coffee Break☕'),
        SessionWidget(SpeakerType.kakeru),
        SessionWidget(SpeakerType.tsuyoshi),
      ],
    );
  }
}

class Day2ListView extends StatelessWidget {
  const Day2ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: const [
        DateWidget('Jun 14'),
        SizedBox(height: 32),
        Divider(
          color: Colors.white24,
        ),
        BreakWidget('9:30 am', 'Door Open'),
        BreakWidget('10:00 am ~ 10:15 am', 'Opening remarks'),
        SessionWidget(SpeakerType.kosuke),
        SessionWidget(SpeakerType.takuma),
        BreakWidget('', 'Lunch Break🍙'),
        SessionWidget(SpeakerType.park),
        SessionWidget(SpeakerType.itome),
        SessionWidget(SpeakerType.ethiel),
        BreakWidget('', 'Coffee Break☕'),
        SessionWidget(SpeakerType.renuka),
        SessionWidget(SpeakerType.abdelrahman),
        BreakWidget('', 'Coffee Break☕️'),
        SessionWidget(SpeakerType.moritz),
        SessionWidget(SpeakerType.majid),
        BreakWidget('7:30 pm ~ 9:00 pm', '️Networking & Dinner🍣'),
        // BreakWidget(
        //     '9:30 pm ~ 11:30 pm', '️After Izakaya Party 🍺 @TBD'),
      ],
    );
  }
}

class DateWidget extends StatelessWidget {
  const DateWidget(
    this.text, {
    super.key,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.displayLarge!.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
    );
  }
}

class SessionWidget extends StatelessWidget {
  const SessionWidget(this.speakerType, {super.key});

  final SpeakerType speakerType;

  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;

    return InkWell(
      onTap: () {
        _dialogBuilder(context, speakerType, isMobile);
      },
      child: SizedBox(
        height: 190,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
              speakerType.time,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    launchUrlString(
                        'https://twitter.com/${speakerType.xAccountName}');
                  },
                  child: SizedBox(
                    width: isMobile ? 12 : 24,
                    child: ClipOval(
                      child: Image.asset(speakerType.logoAssetName),
                    ),
                  ),
                ),
                const SizedBox(width: 6),
                SelectableText(
                  speakerType.name,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            SelectableText(
              speakerType.title,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
            ),
            const Spacer(),
            const Divider(
              color: Colors.white24,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _dialogBuilder(
      BuildContext context, SpeakerType speakerType, bool isMobile) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          insetPadding: EdgeInsets.all(isMobile ? 32 : 80),
          backgroundColor: AppColor.backgroundNavy,
          title: Text(
            speakerType.title,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  speakerType.time,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        launchUrlString(
                            'https://twitter.com/${speakerType.xAccountName}');
                      },
                      child: SizedBox(
                        width: 24,
                        child: ClipOval(
                          child: Image.asset(speakerType.logoAssetName),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    SelectableText(
                      speakerType.name,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                SelectableText(
                  speakerType.talkDescription,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class BreakWidget extends StatelessWidget {
  const BreakWidget(this.time, this.title, {super.key});

  final String time;
  final String title;

  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;

    return SizedBox(
      height: 95,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (time.isNotEmpty)
            SelectableText(
              time,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
            ),
          if (time.isNotEmpty) const SizedBox(height: 16),
          SelectableText(
            title,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
          ),
          const Spacer(),
          const Divider(
            color: Colors.white24,
          ),
        ],
      ),
    );
  }
}
