import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../config/app_color.dart';
import 'lp_base_container.dart';
import 'lp_model.dart';

class About2024Widget extends StatelessWidget {
  const About2024Widget({super.key});
  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;
    return LPBaseContainer(
      isMobile: isMobile,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SelectableText(
            '2024',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 42 : 156,
                  height: 1,
                ),
          ),
          SizedBox(height: isMobile ? 20 : 40),
          Image.asset(
            'resources/images/flutterninjas2024_wide.jpeg',
            fit: BoxFit.cover,
          ),
          SizedBox(height: isMobile ? 20 : 40),
          OverflowBar(
            alignment: MainAxisAlignment.center,
            overflowAlignment: OverflowBarAlignment.center,
            overflowSpacing: 8,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.ninjaBlack,
                ),
                onPressed: () {
                  launchUrlString('https://flutterninjas.dev/2024');
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '2024 Top',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.ninjaBlack,
                ),
                onPressed: () {
                  launchUrlString(
                      'https://www.youtube.com/playlist?list=PLuLRJz1UnJzGTNSc2GpqRypn68-hitn9t');
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'YouTube',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.ninjaBlack,
                ),
                onPressed: () {
                  launchUrlString(
                      'https://blog.flutteruniv.com/flutterninjas-recap/');
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Recap',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
