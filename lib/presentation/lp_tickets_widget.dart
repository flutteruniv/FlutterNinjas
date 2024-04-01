import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../config/app_color.dart';
import 'lp_base_container.dart';
import 'lp_model.dart';

class TicketsWidget extends StatelessWidget {
  const TicketsWidget({Key? key}) : super(key: key);
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
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.ninjaBlack,
            ),
            onPressed: () {
              launchUrlString('https://ti.to/flutterninjas/tokyo-2024');
            },
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Buy Now',
                style: TextStyle(fontSize: 32),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
