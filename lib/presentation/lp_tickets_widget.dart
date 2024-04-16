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
          SizedBox(height: isMobile ? 20 : 40),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    TextButton(
                      onPressed: null,
                      child: Image.asset(
                        'resources/images/early-bird.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.ninjaBlack,
                      ),
                      onPressed: null,
                      child: const Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          'Buy Early-bird',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
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
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.ninjaBlack,
                      ),
                      onPressed: () {
                        launchUrlString(
                            'https://ti.to/flutterninjas/tokyo-2024/with/regular');
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          'Buy Regular',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
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
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.ninjaBlack,
                      ),
                      onPressed: () {
                        launchUrlString(
                            'https://ti.to/flutterninjas/tokyo-2024/with/late-bird');
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          'Buy Late-Bird',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
