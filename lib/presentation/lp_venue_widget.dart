import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'lp_base_container.dart';
import 'lp_model.dart';

class VenueWidget extends StatelessWidget {
  const VenueWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;
    return LPBaseContainer(
      isMobile: isMobile,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SelectableText(
            'Venue',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 42 : 156,
                  height: 1,
                ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  launchUrlString('https://docomo-openlab.jp/');
                },
                child: SelectableText(
                  'docomo R&D OPEN LAB ODAIBA',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.white,
                        fontSize: isMobile ? 16 : 28,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: 48,
                child: TextButton(
                  onPressed: () {
                    launchUrlString(
                        'https://maps.app.goo.gl/9mCYiMURpZ1ZCBsS9');
                  },
                  child: Image.asset(
                    'resources/images/google_map_icon.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Image.asset(
            'resources/images/venue1.jpeg',
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  'resources/images/venue4.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Image.asset(
                  'resources/images/venue5.jpg',
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          const SizedBox(height: 40),
          SelectableText(
            'Floor Map',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 28 : 56,
                  height: 1,
                  color: Colors.white,
                ),
          ),
          const SizedBox(
            height: 16,
          ),
          Image.asset(
            'resources/images/floor_map_2025.png',
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 40),
          SelectableText(
            'Entertainment',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
              fontSize: isMobile ? 28 : 56,
              height: 1,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text('We have some entertainment for you!',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          const Wrap(
            alignment: WrapAlignment.center,
            spacing: 24,
            runSpacing: 24,
            children: [
               EntertainmentWidget(
                imageName: 'resources/images/nailist_kyoro.jpg',
                title: 'Nail artist KYORO',
              ),
               EntertainmentWidget(
                imageName: 'resources/images/dj_nissei.jpg',
                title: 'DJ 日聖',
              ),
              EntertainmentWidget(
                imageName: 'resources/images/flutter_quiz.png',
                title: 'Flutter Quiz',
              ),
              EntertainmentWidget(
                imageName: 'resources/images/boardgame.jpg',
                title: 'Boardgame',
              ),
              EntertainmentWidget(
                imageName: 'resources/images/snack.jpg',
                title: 'Snack & Coffee',
              ),
              EntertainmentWidget(
                imageName: 'resources/images/oden.png',
                title: 'ODEN',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class EntertainmentWidget extends StatelessWidget {
  const EntertainmentWidget({
    super.key,
    required this.imageName,
    required this.title,
  });

  final String imageName;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imageName,
          fit: BoxFit.cover,
          width: 110,
          height: 110,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
