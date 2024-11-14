import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'lp_2024_model.dart';
import 'lp_base_container_2024.dart';

class Venue2024Widget extends StatelessWidget {
  const Venue2024Widget({super.key});
  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LP2024Model>().isMobile;
    return LPBase2024Container(
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
                  'resources/images/venue2.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Image.asset(
                  'resources/images/venue3.jpeg',
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          const SizedBox(height: 80),
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
            'resources/images/floor_map.png',
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
