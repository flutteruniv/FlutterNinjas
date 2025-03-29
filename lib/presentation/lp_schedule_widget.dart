import 'package:flutter/material.dart';
import 'package:flutterninjas/config/app_color.dart';
import 'package:flutterninjas/domain/2024/speaker_type.dart';
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

class Day00ListView extends StatelessWidget {
  const Day00ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: const [
        Opacity(
          opacity: 0.5,
          child: DateWidget('May 27', '(Tue)'),
        ),
        SizedBox(height: 32),
        Divider(color: Colors.white24),
        BreakWidget('9:00 am ~ 6:00 pm', 'Optional Tour @Mt.Fuji🗻 (TBD)'),
      ],
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
        Opacity(
          opacity: 0.5,
          child: DateWidget('May 28', '(Wed)'),
        ),
        SizedBox(height: 32),
        Divider(color: Colors.white24),
        BreakWidget('12:00 pm ~ 6:00 pm', 'Optional Tour @Tokyo🗼 (TBD)'),
        BreakWidget('7:00 pm ~ 10:00 pm', 'Pre-Party @Higashi-Ginza🎉'),
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
        DateWidget('May 29', '(Thu)'),
        SizedBox(height: 32),
        Divider(color: Colors.white24),
        BreakWidget('9:30 am', 'Door Open'),
        BreakWidget('10:00 am ~ 10:30 am', 'Opening talk'),
        BreakWidget('10:30 am ~ 6:30 pm', 'Conference (TBD)'),
        BreakWidget('6:30 pm ~ 6:45 pm', '️Closing @BRIDGE'),
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
        DateWidget('May 30', '(Fri)'),
        SizedBox(height: 32),
        Divider(color: Colors.white24),
        BreakWidget('9:30 am', 'Door Open'),
        BreakWidget('10:00 am ~ 10:15 am', 'Opening remarks'),
        BreakWidget('10:15 am ~ 7:00 pm', 'Conference (TBD)'),
        BreakWidget('7:00 pm ~ 7:15 pm', '️Closing @PARK'),
        BreakWidget('7:30 pm ~ 9:00 pm', '️Networking & Dinner🍣'),
        // BreakWidget(
        //     '9:30 pm ~ 11:30 pm', '️After Izakaya Party 🍺 @TBD'),
      ],
    );
  }
}

class DateWidget extends StatelessWidget {
  const DateWidget(
    this.text,
    this.dayOfTheWeek, {
    super.key,
  });
  final String text;
  final String dayOfTheWeek;

  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;
    if (isMobile) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(width: 16),
          Text(
            dayOfTheWeek,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
          ),
        ],
      );
    } else {
      return Stack(
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Row(
              children: [
                Text(
                  dayOfTheWeek,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ],
            ),
          ),
        ],
      );
    }
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
      height: 100,
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
