import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../config/app_color.dart';
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
          Text(
            'Tickets',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 42 : 156,
                  height: 1,
                ),
          ),
          const SizedBox(height: 16),
          Text(
            'The ticket contains\n・2 days of attending right for FlutterNinjas\n・The right of asking the speakers some questions\n・Lunch for 2 days\n・Dinner for last night\n・flutterengineering.io from Majid Hajian\n・And some special gifts\n\nThe earlier you buy, the more you save.',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
          const SizedBox(height: 32),
          isMobile
              ? const Column(
                  children: [
                    EarlyBird(),
                    SizedBox(height: 32),
                    Regular(),
                    SizedBox(height: 32),
                    LateBird(),
                  ],
                )
              : const Row(
                  children: [
                    Expanded(
                      child: EarlyBird(),
                    ),
                    Expanded(
                      child: Regular(),
                    ),
                    Expanded(
                      child: LateBird(),
                    ),
                  ],
                ),
          const SizedBox(height: 32),
          const Row(
            children: [
              Expanded(child: SizedBox()),
              Expanded(child: WithHotel()),
              Expanded(child: SizedBox()),
            ],
          ),
        ],
      ),
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
          onPressed: null,
          child: Image.asset(
            'resources/images/early-bird.png',
            fit: BoxFit.contain,
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
              'Sold Out',
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
                'https://ti.to/flutterninjas/tokyo-2024/with/regular');
          },
          child: Image.asset(
            'resources/images/regular.png',
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
                'https://ti.to/flutterninjas/tokyo-2024/with/regular');
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
                'https://ti.to/flutterninjas/tokyo-2024/with/late-bird');
          },
          child: Image.asset(
            'resources/images/late-bird.png',
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
                'https://ti.to/flutterninjas/tokyo-2024/with/late-bird');
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
