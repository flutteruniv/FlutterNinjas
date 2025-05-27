import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../config/app_color.dart';
import 'lp_base_container.dart';
import 'lp_model.dart';

class TicketsWidget extends StatelessWidget {
  const TicketsWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;
    return LPBaseContainer(
      isMobile: isMobile,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SelectableText(
            'Tickets',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 42 : 156,
                  height: 1,
                ),
          ),
          const SizedBox(height: 16),
          SelectableText(
            'The ticket contains\n・2 days of FlutterNinjas💻\n・Asking the speakers🙋‍️\n・Coffee and some drinks☕️\n・Lunch for 2 days🍙\n・Dinner for 2nd day🥘\n・Pre-party🥳 \n・Slack community💬\n・Might get some special gifts🎁',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 32),
          const SizedBox(
            width: 300,
            child: LateBird(),
          ),

        ],
      ),
    );
  }
}

class SuperEarlyBird extends StatelessWidget {
  const SuperEarlyBird({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: null,
          child: Opacity(
            opacity: 0.25,
            child: Image.asset(
              'resources/images/super-early-bird-2025.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        const SizedBox(height: 4),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.ninjaBlack,
          ),
          onPressed: null,
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Buy Super Early-Bird',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}

class EarlyBird extends StatelessWidget {
  const EarlyBird({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            launchUrlString(
                'https://ti.to/flutterninjas/tokyo-2025/with/early-bird');
          },
          child: Image.asset(
            'resources/images/early-bird-2025.png',
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 4),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.ninjaBlack,
          ),
          onPressed: () {
            launchUrlString(
                'https://ti.to/flutterninjas/tokyo-2025/with/early-bird');
          },
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Buy Early-Bird',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}

class Regular extends StatelessWidget {
  const Regular({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            launchUrlString(
                'https://ti.to/flutterninjas/tokyo-2025/with/regular');
          },
          child: Image.asset(
            'resources/images/regular-2025.png',
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 4),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.ninjaBlack,
          ),
          onPressed: () {
            launchUrlString(
                'https://ti.to/flutterninjas/tokyo-2025/with/regular');
          },
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Buy Regular',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}

class LateBird extends StatelessWidget {
  const LateBird({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            launchUrlString(
                'https://ti.to/flutterninjas/tokyo-2025/with/late-bird');
          },
          child: Image.asset(
            'resources/images/late-bird-2025.png',
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 4),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.ninjaBlack,
          ),
          onPressed: () {
            launchUrlString(
                'https://ti.to/flutterninjas/tokyo-2025/with/late-bird');
          },
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Buy Late-Bird',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}

class WithHotel extends StatelessWidget {
  const WithHotel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            launchUrlString(
                'https://ti.to/flutterninjas/tokyo-2024/with/with-hotel-jun-12th-15th-visa-support');
          },
          child: Image.asset(
            'resources/images/with-hotel.png',
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 4),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.ninjaBlack,
          ),
          onPressed: () {
            launchUrlString(
                'https://ti.to/flutterninjas/tokyo-2024/with/with-hotel-jun-12th-15th-visa-support');
          },
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Buy This',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
